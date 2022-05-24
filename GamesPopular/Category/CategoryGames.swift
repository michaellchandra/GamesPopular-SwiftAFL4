//
//  CategoryGames.swift
//  GamesPopular
//
//  Created by Michael Chandra on 13/05/22.
//

import SwiftUI

struct CategoryGames: View {
    
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {

                }
    }
}

struct CategoryGames_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGames().environmentObject(ViewModel())
    }
}
