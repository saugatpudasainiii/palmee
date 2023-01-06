//
//  textExtension.swift
//  pal
//
//  Created by Medocre Group on 1/5/23.
//

import Foundation
import SwiftUI


extension Text{
    
    func textUserNotes() -> some View {
        self.fontWeight(.regular).foregroundColor(Color("ancentBlue")).opacity(0.6).font(.subheadline)
    }
    
    func textUsername() -> some View{
        self.font(.title3)
    }
    
    func textUserProfilebio()-> some View{
        self.navigationTitle("").font(.subheadline).fontWeight(.light).padding(10).padding(.horizontal,16)
    }
    
}
