//
//  FriendProfileApiService.swift
//  pal
//
//  Created by Medocre Group on 1/6/23.
//

import Foundation



protocol ProfileDetailApiServiceProtocol{
    
    func fetchProfileDetail() -> UserProfileMode
    
}

final class ProfileDetailApisService : ProfileDetailApiServiceProtocol{
    
    
    
    
    func fetchProfileDetail() -> UserProfileMode {
        let profileDetail: UserProfileMode = Bundle.main.decode(file: ApisName.friendProfile)
        return profileDetail;
    }
    
    
    
    
}





