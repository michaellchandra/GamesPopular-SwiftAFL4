//
//  CategoryGames.swift
//  GamesPopular
//
//  Created by Macbook Pro on 11/05/22.
//

import SwiftUI

struct CategoryGames: View {
    
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
//                    List {
//                        ForEach(viewModel.categories.keys.sorted(), id: \.self) { key in
//                            Text(key)
//                        }
//                    }
//                    .navigationTitle("Featured")
                }
    }
}

struct CategoryGames_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGames().environmentObject(ViewModel())
    }
}
