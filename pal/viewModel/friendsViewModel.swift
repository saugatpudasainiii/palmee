//
//  friendsViewModel.swift
//  pal
//
//  Created by Medocre Group on 1/2/23.
//

import Foundation


class FriendVierwModel : ObservableObject{
    
    
    final let friendReposotories : FriendRepository;
    @Published var friendsData : FriendsData?;
    
    
    
    init(friendReposotories: FriendRepository , friendsData: FriendsData? = nil) {
        self.friendReposotories = friendReposotories
        self.friendsData = friendsData
        getFriendData();
    }
    
    func getFriendData()->Void{
        self.friendsData =  friendReposotories.fetchAllFriendList();
    }
    
    
    func deleteFriend(index : IndexSet){
        friendsData!.friendsList.remove(atOffsets: index)
    }
    
    func searchResults(searchText : String , friendList : [FriendsList]) -> [FriendsList]{
          if searchText.isEmpty {
              return friendList;
          } else {
              return friendList.filter { FriendsList in
                  FriendsList.name.contains(searchText)
              }
          }
      }

    
}
