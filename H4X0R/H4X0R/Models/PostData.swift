//
//  PostData.swift
//  H4X0R
//
//  Created by Swapnil Dhiman on 29/11/22.
//

import Foundation


struct Results:Codable{
    let hits : [Post]
}

struct Post:Codable, Identifiable{
    var id : String{
        return objectID
    }
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}
