//
//  UserProfileView.swift
//  pal
//
//  Created by Medocre Group on 1/4/23.
//

import SwiftUI


struct UserProfileView: View {
    let  userId : Int
    let userName : String
    
    let columns :[GridItem] = [
        GridItem(.flexible(),spacing: 1,alignment: nil),
        GridItem(.flexible(),spacing: 1,alignment: nil),
        GridItem(.flexible(),spacing: 1,alignment: nil)
    ]
    
    init(userId: Int, userName: String) {
        self.userId = userId
        self.userName = userName
        userDetail.getSingleFriendDetail(userId: userId);
    }
    
    @ObservedObject var userDetail : UserProfileViewModel = UserProfileViewModel(userDatailReposotories: UserProfileRepository());
    

    var body: some View {
        ScrollView{
            VStack(){
                VStack{
                    Spacer()
                    AsyncImageLoader(imageUrl:userDetail.userProfileDetail?.imageURL
                                      ?? "", imageHeight: 120, imageWidth: 120, imageRadius: 80).shadow(color: .black,radius: 1,x: 0,y: 0).padding(10)
                    Text(userDetail.userProfileDetail?.name ?? "")   .navigationBarTitle("Profile", displayMode: .inline)
                       .font(.headline).fontWeight(.bold)
                    Text(userDetail.userProfileDetail?.status ?? "").textUserProfilebio()
                            }
                ProfileDetailCard(photosCount:userDetail.userProfileDetail?.userActivityDetail.photos  ?? "", connections: userDetail.userProfileDetail?.userActivityDetail.connections ?? "", score: userDetail.userProfileDetail?.userActivityDetail.score ?? "")
                }
            ZStack{
                Color(.gray).opacity(0.22)
                LazyVGrid(columns: columns,content: {
                    ForEach (0..<userDetail.userProfileDetail!.photos.count,id: \.self) { index in
                            AsyncImageLoader(imageUrl: userDetail.userProfileDetail!.photos[index], imageHeight: 130, imageWidth:UIScreen.main.bounds.size.width/3.1 , imageRadius: 2)
                        }
                })
            }
    
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(userId: 1,userName: "Sasasasasasas")
    }
}
