//
//  FriendApiService.swift
//  pal
//
//  Created by Medocre Group on 1/3/23.
//

import Foundation



protocol friendApiServideProtocol {
    func fetchAllFriendList() -> FriendsData
}


final class FriendApisServide: friendApiServideProtocol{
    
    func fetchAllFriendList()->FriendsData {
    let allFriends: FriendsData = Bundle.main.decode(file: ApisName.friendAps);
        return allFriends;
    }
}
