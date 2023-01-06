//
//  userProfileViewModel.swift
//  pal
//
//  Created by Medocre Group on 1/6/23.
//

import Foundation


class UserProfileViewModel : ObservableObject{
    
    
    final let userDatailReposotories  : UserProfileRepository;
    
     var allUserProfileDetail : UserProfileMode?;
    
    @Published  var userProfileDetail : UserDetail?;
    
    
    init(userDatailReposotories: UserProfileRepository, allUserProfileDetail: UserProfileMode? = nil, userProfileDetail: UserDetail? = nil) {
        self.userDatailReposotories = userDatailReposotories
        self.allUserProfileDetail = allUserProfileDetail
        self.userProfileDetail = userProfileDetail
        
        getFriendDetail();
    }
    
    func getFriendDetail()->Void{
        
        self.allUserProfileDetail = userDatailReposotories.fetchUserprofile();
    }
    
    func getSingleFriendDetail( userId : Int) -> Void{
        userProfileDetail=allUserProfileDetail!.userDetail.first(where: { user in
            user.id ==  userId;
        })
    }
    
}
