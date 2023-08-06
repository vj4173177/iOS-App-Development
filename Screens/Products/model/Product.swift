//
//  Product.swift
//  WedNicely
//
//  Created by S Vijay Kumar on 18/07/23.
//

import Foundation
struct Product : Decodable{
    let id: Int
    let title:String
    let price:Float
    let description:String
    let category:String
    let image:String
}

struct Rate : Decodable{
    let rate:Float
    let count:Int
    
}
