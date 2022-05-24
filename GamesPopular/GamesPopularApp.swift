//
//  GamesPopularApp.swift
//  GamesPopular
//
//  Created by Michael Chandra on 09/05/22.
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
