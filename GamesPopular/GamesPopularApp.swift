//
//  GamesPopularApp.swift
//  GamesPopular
//
//  Created by Macbook Pro on 05/05/22.
//

import SwiftUI

@main
struct GamesPopularApp: App {
    @StateObject private var viewmodel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewmodel)
        }
    }
}
