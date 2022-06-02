//
//  Games.swift
//  GamesPopular
//
//  Created by Michael Chandra on 10/05/22.
//

import Foundation
import SwiftUI


struct Game:Hashable, Codable{
    
    let title:String
    var thumb:String
    let internalName:String
    let dealID:String
    let gameID:String
    let salePrice:String
    let normalPrice:String
    let isOnSale:String
    let savings:String
    let metacriticScore:String
    
    var image:Image{
        Image(thumb)
    }
    
    enum stringpass:String{
        case steam = "1"
        case epic = "25"
    }
    
    var storeID:String
    
}
