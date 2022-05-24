//
//  ProfileEdit.swift
//  GamesPopular
//
//  Created by Michael Chandra on 23/05/22.
//

import SwiftUI

struct ProfileEdit: View {
    var body: some View {
        
        List {
            HStack {
                Text("Username").bold()
                Divider()
//                TextField("Username", text: "Halo")
            }
        }
        
        
        
    }
    
    
    
    
    
    
}

struct ProfileEdit_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEdit()
    }
}
