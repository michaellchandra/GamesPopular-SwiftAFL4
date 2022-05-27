//
//  Header.swift
//  GamesPopular
//
//  Created by Michael Chandra on 10/05/22.
//

import SwiftUI

struct Header: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Explore onsale games")
                        .font(.system(size: 25)).bold()
                    Text("here").font(.system(size: 25)).bold()
                }
                Spacer()
                Image("profilepict").resizable().frame(width: 60, height: 60)
                    .cornerRadius(50)
                }
            .padding(.horizontal,15)
            }
        
            
            
        }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
