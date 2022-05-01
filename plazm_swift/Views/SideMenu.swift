//
//  SideMenu.swift
//  plazm_swift
//
//  Created by Edward Han on 4/26/22.
//

import Foundation
import SwiftUI
import Apollo

//https://swiftuirecipes.com/blog/side-menu-in-swiftui

struct ListTabItem: Hashable, View {
    @EnvironmentObject var sessionProfile: SessionProfile
    
    let ListInfo: GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List
    let ListTitle: String
    let ListId: String
    var ListImageUrl: String = ""
    
//  let profileImage: Image
//    let action: ((String) -> Void) // Triggers when the item is tapped
    
    init(info: GetUserCreatedAndFollowedListsQuery.Data.GetUserCreatedAndFollowedList.List ){
        ListInfo = info
        ListTitle = info.name ?? ""
        ListId = info.id
        if let url = info.media?[0]?.image {ListImageUrl = url}
//        action = sessionProfile.getListDetails(listId: info.id)
        
       
    }

    var body: some View {
        Button(action: getDetails){
        HStack {
            ImageView(withURL: ListImageUrl).frame(width: 32, height: 32).clipShape(Circle()).padding()
            Text(ListTitle)
                .foregroundColor(.gray)
                .font(.system(size: 14))
        }.frame(width: 150, height: 25, alignment: .leading)
        }
    }

// s
    private func getDetails() -> () {
        //return sessionProfile.feedState = .listDetail
        // or maybe a unique function to change feedState to .listDetail and getListDetails
        return sessionProfile.getListDetails(listId: ListId, fromMenu: true)
    }
    
  static func == (lhs: ListTabItem, rhs: ListTabItem) -> Bool {lhs.ListId == rhs.ListId}

  func hash(into hasher: inout Hasher) {
    hasher.combine(ListId)
  }
}

struct SideMenuView: View {
  @Binding var showMenu: Bool
  @EnvironmentObject var sessionProfile: SessionProfile
    
  var body: some View {
    VStack(alignment: .leading) {
        MenuCloseButton(showMenu: self.$showMenu).padding(.top, 20)
        Divider().foregroundColor(.white)
        VStack(alignment: .leading) {
            TabFeedItem(imageTitle: "safari", feedType: .explore).padding()
            TabFeedItem(imageTitle: "house", feedType: .homeFeed).padding()
            TabFeedItem(imageTitle: "list.bullet", feedType: .listExplore).padding()
        }
        Spacer()
        ListTabMenu()
       Spacer()
     }.padding()
     .frame(maxWidth: .infinity, alignment: .leading)
     .background(Color.black)
     .edgesIgnoringSafeArea(.all)
  }
}



struct MenuCloseButton: View {
    @Binding var showMenu: Bool
    
    var body: some View {
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
        }
    }
    
}


struct ListTabMenu: View {
    @EnvironmentObject var sessionProfile: SessionProfile
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(sessionProfile.userLists) {
                    ListTabItem(info: $0).padding()
                }
            }
        }
    }
}

struct TabFeedItem: View {
    
    @EnvironmentObject var sessionProfile: SessionProfile
    var imageTitle: String
    var feedType: FeedState
    
    var body: some View {
        Button(action: toggleFeed){
        HStack {
            Image(systemName: imageTitle)
                .frame(width: 20.0, height: 20.0)
                .foregroundColor(.gray).padding()
                         
            Text(feedType.rawValue)
                .foregroundColor(.gray)
                .font(.system(size: 14))
        }.frame(width: 150, height: 25, alignment: .leading)
        }
    }
    
    private func toggleFeed() -> () {
        return sessionProfile.feedState = feedType
    }
    
    
}
