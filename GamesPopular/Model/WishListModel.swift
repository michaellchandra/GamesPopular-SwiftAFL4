//
//  WishListModel.swift
//  GamesPopular
//
//  Created by Michael Chandra on 06/06/22.
//

import Foundation
import SwiftUI

class Wishlist:ObservableObject{
    
    
    @Published var gameArray:[Game]{
        
        didSet{
            
            saveWishlist()
        }
        
        
        
    }
    
    let saveKey:String = "wishlist"
    
    func getGameWishlist() {
        guard
            let gameData = UserDefaults.standard.data(forKey: saveKey),
            
                let saveGameData = try? JSONDecoder().decode([Game].self, from: gameData)
        else{
            return
            
        }
        
        self.gameArray = saveGameData
    }
    
    init() {
        gameArray = []
        
    }
    
    func saveWishlist() {
        
        if let encodedData = try? JSONEncoder().encode(gameArray){
                    UserDefaults.standard.set(encodedData, forKey: saveKey)
        }
    }
}
