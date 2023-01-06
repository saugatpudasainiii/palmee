//
//  profileDetailRepository.swift
//  pal
//
//  Created by Medocre Group on 1/6/23.
//

import Foundation


protocol userProfileRepositoryProtocal{
    
    func fetchUserprofile() -> UserProfileMode
    
}

final class UserProfileRepository : userProfileRepositoryProtocal{
    final var  userProfileApisServices : ProfileDetailApisService;
    
    init(userProfileApisServices: ProfileDetailApisService = ProfileDetailApisService()) {
        self.userProfileApisServices = userProfileApisServices
    }
    
    
    func fetchUserprofile() -> UserProfileMode {
        let userProfile: UserProfileMode = userProfileApisServices.fetchProfileDetail();
        return userProfile;
        
    }
    
}
