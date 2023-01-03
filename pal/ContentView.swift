//
//  ContentView.swift
//  pal
//
//  Created by Medocre Group on 1/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var friendModel : FriendVierwModel = FriendVierwModel(friendReposotories: FriendRepository());
    
    
    var body: some View {
        NavigationView {
            VStack{
                Section(""){
                    List{
                        ForEach (friendModel.friendsData!.friendsList,id: \.id){ friends in
                            ImageWithTextView(userName: friends.name, imageUrl:friends.imageURL)
                        }.onDelete(perform: friendModel.deleteFriend)
                    }.listStyle(.plain)
                        .navigationTitle("Friend List").navigationBarItems(leading: EditButton(), trailing: Text("add").foregroundColor(.red))
                }
                
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



