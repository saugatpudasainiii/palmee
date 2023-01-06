//
//  apisHanler.swift
//  pal
//
//  Created by Medocre Group on 1/2/23.
//

import Foundation


extension Bundle{
    
    func decode <T : Decodable> (file:String)->T{
        
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Could not find \(file) from bundle)")
        }
        
        guard let data = try?Data(contentsOf: url) else{


            fatalError("Could not load \(file) from bundle)")
        }
        
        let decoder = JSONDecoder();
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else{
            
            fatalError("Could not able  to decode the file");
            
            
        }
        return loadedData;
        
    }
    
    
}
