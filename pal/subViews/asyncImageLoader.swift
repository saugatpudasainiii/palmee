//
//  asyncImageLoader.swift
//  pal
//
//  Created by Medocre Group on 1/5/23.
//

import SwiftUI

struct AsyncImageLoader: View {
    
     let imageUrl:String
     let imageHeight:CGFloat
     let imageWidth:CGFloat
    let imageRadius:CGFloat
    
    
    init(imageUrl: String, imageHeight: CGFloat, imageWidth: CGFloat, imageRadius: CGFloat) {
        self.imageUrl = imageUrl
        self.imageHeight = imageHeight
        self.imageWidth = imageWidth
        self.imageRadius = imageRadius
    }
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)!) { image in
                  image
                      .resizable()
                      .aspectRatio(contentMode: .fill)
              } placeholder: {
                  Image(systemName: "photo.fill")
              }.frame(width: imageWidth, height: imageHeight).cornerRadius(imageRadius)
    }
}

struct asyncImageLoader_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageLoader(imageUrl: "https://picsum.photos/200/300?random=4" , imageHeight: 20, imageWidth: 30, imageRadius: 30)
    }
}
