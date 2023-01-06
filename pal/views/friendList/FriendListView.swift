//
//  FriendListView.swift
//  pal
//
//  Created by Medocre Group on 1/3/23.
//

import SwiftUI

struct FriendListView: View {
  
    @ObservedObject var friendModel : FriendVierwModel = FriendVierwModel(friendReposotories: FriendRepository());
    
    
    @State var searchText : String = "";
    
    var body: some View {
        VStack{
            List {
                ForEach (friendModel.searchResults(searchText: searchText, friendList: friendModel.friendsData!.friendsList),id: \.id){ friends in
                    ImageWithTextView(userName: friends.name, imageUrl: friends.imageURL,userNotes: friends.status,userId: friends.id)
                    }.onDelete(perform: friendModel.deleteFriend)
            }.listStyle(.plain)
        }.searchable(text: $searchText)
    }
    
  
  }
    

struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView()
    }
}
