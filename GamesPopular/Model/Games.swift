//
//  Games.swift
//  GamesPopular
//
//  Created by Macbook Pro on 06/05/22.
//

import Foundation
import SwiftUI


struct Game:Hashable, Codable{
    
    let title:String
    var thumb:String
    let internalName:String
//    let metacriticLink:String
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
    
    
    
    
    var storeID: Category
    
    enum Category: String, CaseIterable, Codable {
            case steam = "1"
            case GamersGate = "2"
        
        
        var descriptor:String{
                switch self{
                case .steam: return "Steam"
                case .GamersGate: return "GamersGate"
                }
            }
        
        
        }

//    func checkPoint(storeID : Category) -> String {
//
//        switch storeID {
//        case .steam:
//            return "Steam"
//        case .epic:
//            return "Epic Games"
//        }
//       }
    
    
//    let steamRatingText:String
//    let steamRatingPercent:String
//    let steamRatingCount:String
//    let steamAppID:Int
//    let releaseDate:Int
//    let lastChange:Int
//    let dealRating:Double
//    
    
}
