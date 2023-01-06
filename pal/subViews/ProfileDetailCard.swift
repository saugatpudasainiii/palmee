//
//  ProfileDetailCard.swift
//  pal
//
//  Created by Medocre Group on 1/5/23.
//

import SwiftUI




struct ProfileDetailCard: View {
    
    let photosCount : String
    let connections : String
    let score : String
    
    
    func vUserCard(firsdtItem:String,secondItem:String) ->some View{
        VStack{
            Text(firsdtItem).fontWeight(.regular).padding(.bottom,1).opacity(0.3)
            Text(secondItem).fontWeight(.bold)                 }
    }
    
    
    
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                vUserCard(firsdtItem:
                            "Photos", secondItem: photosCount)            }
            Spacer()
            VStack{
                vUserCard(firsdtItem:
                            "Connections", secondItem: connections)
            }
            Spacer()
            VStack{
                vUserCard(firsdtItem:
                            "Score", secondItem: score)
            }
            Spacer()
            
        }.padding(.vertical,30)
    }
}

struct ProfileDetailCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailCard(photosCount: "3232", connections: "223", score: "233")
    }
}
