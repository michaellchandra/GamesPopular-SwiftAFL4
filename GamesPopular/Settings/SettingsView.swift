//
//  SettingsView.swift
//  GamesPopular
//
//  Created by Michael Chandra on 23/05/22.
//

import SwiftUI

struct SettingsView: View {
    
    
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Settings")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Text ("Appearance")
                
                Toggle(isOn: <#T##Binding<Bool>#>) {
                    Text("Night Mode").bold()
                }
                
            }
            
        
        }
        
        
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
