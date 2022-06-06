//
//  MoreGames.swift
//  GamesPopular
//
//  Created by Michael Chandra on 31/05/22.
//

import SwiftUI

struct MoreGames: View {
    var body: some View {
            VStack{
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Game List")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Spacer()
                    }
                   Spacer()
                    
                
            }    .padding(20)
        }
    }
}

struct MoreGames_Previews: PreviewProvider {
    static var previews: some View {
        MoreGames()
    }
}

