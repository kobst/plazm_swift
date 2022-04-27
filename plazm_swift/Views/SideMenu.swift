//
//  SideMenu.swift
//  plazm_swift
//
//  Created by Edward Han on 4/26/22.
//

import Foundation
import SwiftUI

//https://swiftuirecipes.com/blog/side-menu-in-swiftui

struct ListTabItem: Hashable {
  let ListTitle: String
  let ListId: String
  let profileImage: Image
  let action: () -> Void // Triggers when the item is tapped

  static func == (lhs: ListTabItem, rhs: ListTabItem) -> Bool {lhs.ListId == rhs.ListId}

  func hash(into hasher: inout Hasher) {
    hasher.combine(ListId)
  }
}

struct SideMenuView: View {
  @Binding var showMenu: Bool
  var items: [ListTabItem] = []

  var body: some View {
    VStack(alignment: .leading) {
      Button(action: {
        withAnimation {
          self.showMenu = false
        }
      }) {
        HStack {
          Image(systemName: "xmark")
            .foregroundColor(.white)
          Text("close menu")
            .foregroundColor(.white)
            .font(.system(size: 14))
            .padding(.leading, 15.0)
        }
      }.padding(.top, 20)
      Divider().foregroundColor(.white)
        
        VStack(alignment: .leading) {
                    HStack {
                        Image("compass-white")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(.gray)
//                            .imageScale(.small)
                        Text("Explore")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                        .padding(.top, 100)
                    HStack {
                        Image("home-white")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(.gray)
                        Text("Home")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                        .padding(.top, 30)
                    HStack {
                        Image("grid-blue")
                            .resizable()
                            .frame(width: 32.0, height: 32.0)
                            .foregroundColor(.gray)
                        Text("Subscriptions")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                        .padding(.top, 30)
                      
                }
        Spacer()
        
      ForEach(self.items, id: \.self) { item in
        Button(action: item.action) {
           Text(item.ListTitle.uppercased())
             .foregroundColor(.white)
             .font(.system(size: 14))
             .fontWeight(.semibold)
         }.padding(.top, 30)
       }
       Spacer()
     }.padding()
     .frame(maxWidth: .infinity, alignment: .leading)
     .background(Color.black)
     .edgesIgnoringSafeArea(.all)
  }
}




struct SideMenu: View {
    var body: some View {
        GeometryReader{ geometry in
            VStack(alignment: .leading) {
                        HStack {
                            Image("compass-white")
                                .foregroundColor(.gray)
                                .imageScale(.small)
                            Text("Explore")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                            .padding(.top, 100)
                        HStack {
                            Image("home-white")
                                .foregroundColor(.gray)
                                .imageScale(.small)
                            Text("Home")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                            .padding(.top, 30)
                        HStack {
                            Image(systemName: "gear")
                                .foregroundColor(.gray)
                                .imageScale(.small)
                            Text("Subscriptions")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                            .padding(.top, 30)
                            Spacer()
                    }
                    .padding()
                    .frame(width: 100, height: geometry.size.height, alignment: .leading)
                    .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                    .edgesIgnoringSafeArea(.all)
        }
        }

}


struct SideMeny_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
