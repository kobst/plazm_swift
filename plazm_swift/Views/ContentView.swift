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
                    MainView(showMenu: self.$showMenu).frame(width: geometry.size.width, height: geometry.size.height)
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
        
        VStack(alignment: .center){
            Text(sessionProfile._user?.email ?? "no email")
                .padding()
            
            Button(action: {
                        withAnimation {
                           self.showMenu = true
                        }
                    }) {
                        Text("Show Menu")
                    }
            
            switch sessionProfile.feedState {
                case .homeFeed:
                    withAnimation{
                            HomeFeed().transition(.scale)
//                    .animation(.easeInOut(duration: 2))
                    }
                case .explore:
//                    withAnimation(.easeInOut(duration: 1.0)){
                withAnimation{
                        ExploreFeedView().transition(.scale)
                    }
                case .listDetail:
                    withAnimation{
                        ListDetailView().transition(.scale)
                    }
                case .listExplore:
                    withAnimation {
                        ListExplorerView().transition(.scale)
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
