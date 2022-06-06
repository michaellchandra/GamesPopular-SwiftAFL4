import SwiftUI
import Foundation

enum Theme {
    static let primary = Color("Primary")
}


struct ContentView: View {
        
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    @AppStorage("lightModeEnabled") private var lightModeEnabled = false
    var body: some View {
        
        TabView{
//            Theme.primary.ignoresSafeArea()
            ListGame().tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            
            WishlistGame().tabItem{
                Image(systemName: "bookmark")
                Text("Wishlist")
            }
            
            SettingsView(darkModeEnabled: $darkModeEnabled, lightModeEnabled: $lightModeEnabled).tabItem{
                Image(systemName: "gearshape")
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
