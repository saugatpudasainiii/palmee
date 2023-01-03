//
//  friendsRepository.swift
//  pal
//
//  Created by Medocre Group on 1/3/23.
//

import Foundation

import Foundation



protocol friendRepositoryProtocol {
    func fetchAllFriendList() -> FriendsData
}


final class FriendRepository: friendRepositoryProtocol{
    final var friendApiServices : FriendApisServide;
    init(friendApiServices: FriendApisServide = FriendApisServide()) {
        self.friendApiServices = friendApiServices
    }
    
    
    
    func fetchAllFriendList()->FriendsData {
        let allFriends: FriendsData = friendApiServices.fetchAllFriendList();
        return allFriends;
    }
}

