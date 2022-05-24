//
//  ProfileView.swift
//  GamesPopular
//
//  Created by Michael Chandra on 14/05/22.
//

import SwiftUI

struct ProfileView: View {
    
//    var Edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        VStack{
            HStack{
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
//                    .foregroundColor(.white)
                
                
                
            }
            Spacer()
            
                .padding()
            
            //Background
            
            
            //Button Logout
//            Button(action: <#T##() -> Void#>, label: {
//                Text("Logout")
//                    .foregroundColor(.blue)
//                    .fontWeight(.bold)
//                    .padding()
//                    .frame(width: UIScreen.main.bounds.width - 100)
//                    .background(Color("blue"))
//                    .clipShape(Capsule())
//            })
            
            
            
        }
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
