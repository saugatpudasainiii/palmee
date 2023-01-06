//
//  NavigationView.swift
//  pal
//
//  Created by Medocre Group on 1/3/23.
//

import SwiftUI

struct HomeNavigationView: View {
    var body: some View {
        TabView {
            NavigationStack {
                
                FriendListView()
                    .navigationTitle("Friends")
                    .toolbar {
                        Image(systemName: "plus").foregroundColor(.orange)
                    }}
                   .tabItem {
                       Image(systemName: "person")//note how this is modifying `NavigationView`
                       Text("Friends")
                   }
            NavigationView {
                
                FriendListView()
                    .navigationTitle("Chats")
                  }
                   .tabItem { //note how this is modifying `NavigationView`
                       Image(systemName: "bubble.right.fill")
                       
                       Text("Chats")
                   }
               Text("Camera Screen")
                   .tabItem {
                       Image(systemName: "camera.aperture")
                       Text("Camera")
               }
               Text("Profile")
                   .tabItem {
                       Image(systemName: "house.fill")

                       Text("Profile")
               }
        }.accentColor(.orange).tabViewStyle(.automatic)
    }
}

struct HomeNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigationView();
    }
}
