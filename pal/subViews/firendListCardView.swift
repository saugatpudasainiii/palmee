//
//  firendListCardView.swift
//  pal
//
//  Created by Medocre Group on 1/3/23.
//

import SwiftUI



struct ImageWithTextView : View {
     let userName : String
     let imageUrl : String
     let userNotes : String
    let userId : Int

    var body: some View{
       
            NavigationLink {
            
                UserProfileView(userId: userId, userName: userName)
                
            } label: {
                HStack{
                    AsyncImage(url: URL(string: imageUrl)!) { image in
                              image
                                  .resizable()
                                  .aspectRatio(contentMode: .fill)
                          } placeholder: {
                              Image(systemName: "photo.fill")
                          }.frame(width: 50, height: 50).cornerRadius(40)
                    VStack(alignment:.leading){
                        
                        Text(userName).textUsername()
                        Text(userNotes
                        ).textUserNotes()
                    }
                  
                    
                }
            

        
        
        }

       
    }
}
