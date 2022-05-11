//
import SwiftUI
import Foundation


//struct Course:Hashable, Codable{
//
//    let title:String
//    let thumb:String
//}




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
            
            ProfileView().tabItem{
                Image(systemName: "person")
                Text("Profile")
                
            }
        }
        
    
    }
       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
