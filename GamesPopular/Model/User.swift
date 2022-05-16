//
//  User.swift
//  GamesPopular
//
//  Created by Michael Chandra on 16/05/22.
//

import SwiftUI


struct ModelUser {
    
    var name : String
    var picture : String
    var location : String
    var description : String
    
}

struct User: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct User_Previews: PreviewProvider {
    static var previews: some View {
        User()
    }
}
