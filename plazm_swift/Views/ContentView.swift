//
//  ContentView.swift
//  plazm_swift
//
//  Created by Edward Han on 4/23/22.
//

import SwiftUI
import Amplify
import Apollo

import CoreLocation


struct ContentView: View {
    
    @StateObject var sessionProfile = SessionProfile()
    
    @State var showMenu = false
    @State var authId: String

    let alignment = Alignment(horizontal: .leading, vertical: .top)

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
            ZStack(alignment: alignment) {
//                LinearGradient(
//                    colors: [.orange, .red],
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
//                .ignoresSafeArea()
//                MapboxMapView()
//                MapboxMapView().centerMap(CLLocationCoordinate2D(latitude: 20.74847410051574, longitude: -73.9759307))
            
                VStack (alignment: .center ){
                    MainView(showMenu: self.$showMenu).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2).ignoresSafeArea()
//                    MapboxMapView(idLocationPairs: $sessionProfile.locationIdPairs, centerPt: $sessionProfile.userLocation).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2).ignoresSafeArea()
//                    MapboxMapView(addLocation: $sessionProfile.addLocation, removeLocation: $sessionProfile.removeLocation).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2).ignoresSafeArea()
                    MapboxMapView2(addLocation: $sessionProfile.addLocation, locations: $sessionProfile.locations, refreshLocations: $sessionProfile.refreshLocations).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2).ignoresSafeArea()
                }


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
    @State private var isActive : Bool = false
    @State var isNavigationBarHidden: Bool = true

    var body: some View {
        VStack {
//            Button(action: {withAnimation {self.showMenu = true} }) {Text("Show Menu")}
            NavigationView{
                VStack(alignment: .center){
                    Button(action: {withAnimation {self.showMenu = true} }) {Text("Show Menu")}
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
                }.hiddenNavigationBarStyle()
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
