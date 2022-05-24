//
import SwiftUI
import Foundation



struct ContentView: View {
    
    var body: some View {
        TabView{
            ListGame().tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            
            WishlistGame().tabItem{
                Image(systemName: "bookmark")
                Text("Wishlist")
            }
            
            SettingsView().tabItem{
                Image(systemName: "person")
                Text("Settings")
                
            }
        }
        
    
    }
       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
