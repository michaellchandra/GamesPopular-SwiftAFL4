//
//  RowGame.swift
//  GamesPopular
//
//  Created by Macbook Pro on 06/05/22.
//

import SwiftUI

struct RowGame: View {
    
    var gameget:Game
    @StateObject var viewModel = ViewModel()
    var body: some View {
        HStack{
            Image("").frame(width: 130, height: 70)
                .background(Color.gray)
                .padding()
//            Text(viewModel.games[])
            
        }
        .onAppear{
            viewModel.fetch()
        }
        .padding(3)
    }
       
    }


struct RowGame_Previews: PreviewProvider {
    
    static var games = ViewModel().games
    
    static var previews: some View {
        Group{
            RowGame(gameget:games[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
