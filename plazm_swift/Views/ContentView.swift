//
//  ContentView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/23/22.
//

import SwiftUI
import Amplify
import Apollo




struct ContentView: View {
    
    @StateObject var sessionProfile = SessionProfile()
    
    @State var showMenu = false
    @State var authId: String


    var body: some View {
        // why does gesture slide out not work when pulling out?
        
        let drag = DragGesture().onEnded { event in
          if event.location.x < 200 && abs(event.translation.height) < 50 && abs(event.translation.width) > 50 {
            withAnimation {
              self.showMenu = event.translation.width > 0
            }
          }
        }
        
        return GeometryReader { geometry in
            ZStack(alignment: .leading) {
        
                    MainView(showMenu: self.$showMenu).frame(maxWidth: .infinity, maxHeight: .infinity)
                    if self.showMenu {
                        SideMenuView(showMenu: self.$showMenu)
                            .frame(width: 150)
                            .transition(.move(edge: .leading))
                        }

            }.environmentObject(sessionProfile)}
            .onAppear(){
                self.sessionProfile.getUser(auth_user_sub: authId)
                self.sessionProfile.explore()
            }
            .gesture(drag)

        
    }
}



struct MainView: View {
        
    @EnvironmentObject var sessionProfile: SessionProfile
    @Binding var showMenu: Bool
 

    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Button(action: {
                            withAnimation {
                               self.showMenu = true
                            }
                        }) {
                            Text("Show Menu")
                        }
                
                
                // how to add appropriate animation for switching feeds....
                switch sessionProfile.feedState {
                    case .homeFeed:
                        HomeFeed()
                    case .explore:
                            ExploreFeedView()
                    case .listDetail:
                            ListDetailView()
                    case .listExplore:
                            ListExplorerView()
            
                }

            }
        }

    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(authId: "")
//        MainView(sessionProfile: sessionProfile)
    }
}
