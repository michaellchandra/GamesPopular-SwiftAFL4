//
//  WishlistGame.swift
//  GamesPopular
//
//  Created by Michael Chandra on 23/05/22.
//

import SwiftUI

struct WishlistGame: View {
    var body: some View {
        VStack{
            
            VStack(alignment: .leading){
                HStack{
                    Text("Wish List")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer()
                }
               Spacer()
                
            
        }    .padding(20)
    }
    }
}

struct WishlistGame_Previews: PreviewProvider {
    static var previews: some View {
        WishlistGame()
    }
}
