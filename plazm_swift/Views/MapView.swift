//
//  MapView.swift
//  plazm_swift
//
//  Created by Edward Han on 5/3/22.
//

import Foundation
import UIKit
import SwiftUI
import MapboxMaps


//https://www.createwithswift.com/tutorial-integrating-mapbox-with-swiftui/

//class MapDataSource: ObservableObject {
//    @Published var locationCoordinates = [CLLocationCoordinate2D]()
//    @Published var centerMap = CLLocationCoordinate2D()
//
//    init(){
//
//    }
//
//}

struct MapboxMapView: UIViewControllerRepresentable {
    
//    @ObservedObject var dataSource = MapDataSource()
//    @Binding var idLocationPairs: [(id: String, coord: CLLocationCoordinate2D)]
//    @Binding var locations: [CLLocationCoordinate2D]
//    @Binding var centerPt: CLLocationCoordinate2D
//    var centerPt: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 40.74847410051574, longitude: 17.9759307)
    @Binding var addLocation: (id: String, coord: CLLocationCoordinate2D)?
//    @Binding var locations: [CLLocationCoordinate2D]
    @Binding var removeLocation: String?
    
    @State var workItem: DispatchWorkItem?
    
    @State var elapsed: Bool = false
    
    func makeUIViewController(context: Context) -> MapViewController {
           return MapViewController()
       }
      
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {

        uiViewController.addLocation(location: addLocation)
//        uiViewController.removeLocation(idLocation: removeLocation)

//        uiViewController.centerPt = centerPt
     
//                    for loc in idLocationPairs {
//                        if !uiViewController.locationPairs.contains(where: {$0 == loc}){
//                            uiViewController.addLocation(location: loc)
//                        }
//                    }
        
//                    for loc in uiViewController.locationPairs {
//                        if !idLocationPairs.contains(where: {$0 == loc}){
//                            uiViewController.removeLocation(location: loc)
//                        }
//                    }

//      
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
//            print("ready")
//        }

//        DispatchQueue.main.async { elapsed = false }
//        workItem?.cancel()
//        workItem = DispatchWorkItem {
//            print("in update delay")
//            for loc in idLocationPairs {
//                if !uiViewController.locationPairs.contains(where: {$0 == loc}){
//                    print("add location")
//                    uiViewController.addLocation(location: loc)
//                }
//            }
//
//            for loc in uiViewController.locationPairs {
//                if !idLocationPairs.contains(where: {$0 == loc}){
//                    uiViewController.removeLocation(location: loc)
//                }
//            }
//        }
//
//        if let work = workItem {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: work)
//        }
        
    }
    
    func addToMap(_ uiViewController: MapViewController) {
//        for loc in idLocationPairs {
//            if !uiViewController.locationPairs.contains(where: {$0 == loc}){
//                print("add location")
//                uiViewController.addLocation(location: loc)
//            }
//        }
//
//        for loc in uiViewController.locationPairs {
//            if !idLocationPairs.contains(where: {$0 == loc}){
//                uiViewController.removeLocation(location: loc)
//            }
//        }
    }
    
}



struct MapboxMapView2: UIViewControllerRepresentable {
    
//    @Binding var idLocationPairs: [(id: String, coord: CLLocationCoordinate2D)]
//
//    @Binding var removeLocations: [String]
//    @Binding var userLocation: CLLocationCoordinate2D?
    
    @Binding var addLocation: (id: String, coord: CLLocationCoordinate2D)?
    @Binding var locations: [CLLocationCoordinate2D]
    
    @Binding var refreshLocations: Bool
    // binding var to feed type
    //binding var to coordinate array for each feed...
    //

    func makeUIViewController(context: Context) -> MapViewController {
           return MapViewController()
       }
      
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {
        if refreshLocations {
            uiViewController.addLocations(locations: locations)
            refreshLocations = false
        }
        uiViewController.addLocation(location: addLocation)
       
//                for loc in idLocationPairs {
//                    if !uiViewController.locationPairs.contains(where: {$0 == loc}){
//                        print("add location")
//                        uiViewController.addLocation(location: loc)
//                    }
//                }
        

        
//        if removeLocations.count > 0 {
//            for i in 0...removeLocations.endIndex {
//                if let idx = uiViewController.pointManager.annotations.firstIndex(where: { $0.id == removeLocations[i] }) {
//                    uiViewController.pointManager.annotations.remove(at: idx)
//                    removeLocations.remove(at: i)
//
//                }
//            }
//        }
       
        
    }

    
}





class MapViewController: UIViewController {
    internal var mapView: MapView!
    internal var pointManager: PointAnnotationManager!
    internal var circleManager: CircleAnnotationManager!
 
   
    internal var indexes: [Int] = []

    var annos: [PointAnnotation] = []
    var locationPairs: [(id: String, coord: CLLocationCoordinate2D)] = []
    var centerPt: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 40.74847410051574, longitude: -73.9759307)
    var userLocation: CLLocationCoordinate2D?
    
    let _annotationImage = UIImage(systemName: "diamond.fill")!
    let insets: UIEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    var coordinates: [CLLocationCoordinate2D] {
        var coords: [CLLocationCoordinate2D] = []
        for an in pointManager.annotations {
            let lat = an.point.coordinates.latitude
            let lng = an.point.coordinates.longitude
            coords.append(CLLocationCoordinate2D(latitude: lat, longitude: lng))
        }
        return coords
         
    }
    

    
   override public func viewDidLoad() {
       super.viewDidLoad()
       let myResourceOptions = ResourceOptions(accessToken: Bundle.main.object(forInfoDictionaryKey: "MBXAccessToken") as! String)
       if let _userLocation = userLocation {
           centerPt = _userLocation
       }
       let cameraOptions = CameraOptions(center: centerPt, zoom: 4.5, bearing: -17.6, pitch: 45)
       
       let style = StyleURI(rawValue: "mapbox://styles/kobstr/ckyan5qpn0uxk14pe1ah8qatg")
       
       let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOptions, cameraOptions: cameraOptions, styleURI: style)

       
       mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
       mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
       pointManager = mapView.annotations.makePointAnnotationManager()
       circleManager = mapView.annotations.makeCircleAnnotationManager()
       self.view.addSubview(mapView)
       
       
       
       
   }
    
    
    func requestPermissionsButtonTapped() {
        mapView.location.requestTemporaryFullAccuracyPermissions(withPurposeKey: "CustomKey")
    }
    
    
    func centerMap(location: CLLocationCoordinate2D, coordinates: [CLLocationCoordinate2D]) {
//        mapView.mapboxMap.setCamera(to: CameraOptions(center: location))

        
        for loc in coordinates {
            var pt = PointAnnotation(coordinate: loc)
            pt.image = .init(image: UIImage(systemName: "diamond.fill")!, name: "place")
            annos.append(pt)
            pointManager.annotations.append(pt)
        }
        pointManager.annotations = annos
        
        let camera = mapView.mapboxMap.camera(for: coordinates,
                                              padding: .zero,
                                              bearing: nil,
                                              pitch: nil)
        mapView.camera.ease(to: camera, duration: 1.0)

    }
    
    func addLocations(locations: [CLLocationCoordinate2D]) {
        
        // find pairs that are not already in the locationPairs
        print("Adding locations in add locations \(locations.count)")
     
        pointManager.annotations.removeAll()
        for loc in locations {
            var pt = PointAnnotation(coordinate: loc)
            pt.image = .init(image: UIImage(systemName: "diamond.fill")!, name: "place")
            pointManager.annotations.append(pt)
        }
        let polygon = Geometry.polygon(Polygon([locations]))
        let camera = mapView.mapboxMap.camera(for: polygon, padding: .init(top: 10, left: 10, bottom: 10, right: 10), bearing: nil, pitch: nil)
        
        mapView.camera.ease(to: camera, duration: 1.0)
        
        
    }
    
    func addFeeds(locations: [(id: String, coord: CLLocationCoordinate2D)]) {
        
        for loc in locations {
            var pt = PointAnnotation(id: loc.id, coordinate: loc.coord)
            pt.image = .init(image: UIImage(systemName: "diamond.fill")!, name: "place")
            pointManager.annotations.append(pt)
        }
    }
    
    func addLocation(location: (id: String, coord: CLLocationCoordinate2D)?){
        
        if let loc = location  {

            circleManager.annotations.removeAll()
            var circle = CircleAnnotation(centerCoordinate: loc.coord)
            circle.circleColor = StyleColor(.red)
            circle.circleRadius = 7
            circleManager.annotations.append(circle)
            
//            let cam = CameraOptions(center: loc.coord, zoom: 15, bearing: -17.6, pitch: 45)
//            mapView.camera.ease(to: cam, duration: 1.0)

        }
    }
    
    
    
    func centerCamera(){
        
        let cam = CameraOptions(center: centerPt, zoom: 4.5, bearing: -17.6, pitch: 45)
        mapView.camera.ease(to: cam, duration: 10.0)
    }
    
    
    func adjustCameraShape() {
        print("\(coordinates.count)")
        let polygon = Geometry.polygon(Polygon([coordinates]))
        let camera = mapView.mapboxMap.camera(for: polygon, padding: .init(top: 10, left: 10, bottom: 10, right: 10), bearing: nil, pitch: nil)
        
        mapView.camera.ease(to: camera, duration: 1.0)
    }
    
    
    func removeLocation(idLocation: String?){
        print("removing")
        if let idx = pointManager.annotations.firstIndex(where: { $0.id == idLocation }) {
            pointManager.annotations.remove(at: idx)
        }

    
    }
    
    
    
//    func removeLocation(location: (id: String, coord: CLLocationCoordinate2D)){
//        if let idx = pointManager.annotations.firstIndex(where: { $0.id == location.id }) {
//            pointManager.annotations.remove(at: idx)
//        }
//
//
//    }
    
}




