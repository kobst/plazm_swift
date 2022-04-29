//
//  ImageHandler.swift
//  plazm_swift
//
//  Created by Edward Han on 4/27/22.
//

import Foundation

import SwiftUI

//https://stackoverflow.com/questions/57028484/how-to-convert-a-image-to-uiimage
struct ImageView: View {
    @ObservedObject var imageLoader:ImageLoader

    init(withURL url:String?) {
        imageLoader = ImageLoader(urlString:url)
    }

    var body: some View {
            Image(uiImage: imageLoader.image ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100, height:100)
    }
}

class ImageCache {
    var cache = NSCache<NSString, UIImage>()
    
    func get(forKey: String) -> UIImage? {
        return cache.object(forKey: NSString(string: forKey))
    }
    
    func set(forKey: String, image: UIImage) {
        cache.setObject(image, forKey: NSString(string: forKey))
    }
}

extension ImageCache {
    private static var imageCache = ImageCache()
    static func getImageCache() -> ImageCache {
        return imageCache
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    var urlString: String?
    var imageCache = ImageCache.getImageCache()
    
    init(urlString: String?) {
        self.urlString = urlString
        loadImage()
    }
    
    func loadImage() {
        if loadImageFromCache() {
            print("Cache hit")
            return
        }
        
        print("Cache miss, loading from url")
        loadImageFromUrl()
    }
    
    func loadImageFromCache() -> Bool {
        guard let urlString = urlString else {
            return false
        }
        
        guard let cacheImage = imageCache.get(forKey: urlString) else {
            return false
        }
        
        image = cacheImage
        return true
    }
    
    func loadImageFromUrl() {
        guard let _urlString = urlString else {
            return
        }
        

        let validUrlString = _urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "" //This will fill the spaces with the %20

        if validUrlString != "" {
            let url = URL(string: validUrlString)!
            let task = URLSession.shared.dataTask(with: url, completionHandler: getImageFromResponse(data:response:error:))
            task.resume()
        }

    }
    
    
    func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        guard error == nil else {
            print("Error: \(error!)")
            return
        }
        guard let data = data else {
            print("No data found")
            return
        }
        
        DispatchQueue.main.async {
            guard let loadedImage = UIImage(data: data) else {
                return
            }
            
            self.imageCache.set(forKey: self.urlString!, image: loadedImage)
            self.image = loadedImage
        }
    }
}



//public protocol Shape : Animatable, View {
//    func path(in rect: CGRect) -> Path
//}


struct HexagonShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
   
            let w = 2 * rect.width
            let h = (3).squareRoot() * rect.width
            
            path.move(
                to: CGPoint(
                    x: -0.25 * w,
                    y: 0.5 * h)
            )

            path.addLine(
                to: CGPoint(
                    x: 0.25 * w,
                    y: 0.5 * h)
            )

            path.addLine(
                to: CGPoint(
                    x: 0.5 * w,
                    y: 0)
            )
            
            path.addLine(
                to: CGPoint(
                    x: 0.25 * w,
                    y: -0.5 * h)
            )
            
            path.addLine(
                to: CGPoint(
                    x: -0.25 * w,
                    y: -0.5 * h)
            )
            
            path.addLine(
                to: CGPoint(
                    x: -0.5 * w,
                    y: 0)
            )

            path.closeSubpath()
        }
    }
}


struct HexShapeFlat: Shape {
    
 
    func path(in rect: CGRect) -> Path {
        Path { path in
   
            // pass in width and height w relevant proportions...
            
            let w = rect.width
            let h = rect.height
//            let w = 2 * size
//            let h = (3).squareRoot() * size
            
            path.move(to: CGPoint(x: 0.25 * w, y: 0))

            path.addLine(to: CGPoint(x: 0.75 * w, y: 0))
            
            path.addLine(to: CGPoint(x: w, y: 0.5 * h))
            
            path.addLine(to: CGPoint(x: 0.75 * w, y: h))

            path.addLine(to: CGPoint(x: 0.25 * w, y: h))
            
            path.addLine(to: CGPoint(x: 0, y: 0.5 * h))

            path.closeSubpath()
        }
    }
}


struct HexModifier: ViewModifier {
    
    var size: CGFloat

    func body(content: Content) -> some View {
            content.frame(width: 2 * size, height: (3).squareRoot() * size)
    }
}

extension View {
    func hexagonal(with size: CGFloat) -> some View {
        modifier(HexModifier(size: size))
    }
}
