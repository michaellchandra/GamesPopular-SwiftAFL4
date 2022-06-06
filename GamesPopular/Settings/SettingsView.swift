//
//  SettingsView.swift
//  GamesPopular
//
//  Created by Michael Chandra on 23/05/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var darkModeEnabled:Bool
    @Binding var lightModeEnabled : Bool
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Settings")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                HStack{
                    Text ("Appearance")
                    Spacer()
                }
                .padding([.top, .leading])
                
                HStack{
                    Image(systemName: "moon")
                    Text("Night Mode")
                    Spacer()
                    
//                    Toggle(isOn: $darkModeEnabled, label: {
//                        Text("Dark Mode")
//                    })
//                    .onChange(of: darkModeEnabled, perform:{
//                        _ in
//
//                        SystemThemeManager
//                            .shared
//                            .handleTheme(darkMode: darkModeEnabled, light: lightModeEnabled)
//                    })
//
//                    Toggle(isOn: $lightModeEnabled, label:{
//                        Text("Light Mode")
//                    })
//                    .onChange(of: lightModeEnabled, perform:{
//                        _ in
//
//                        SystemThemeManager
//                            .shared
//                            .handleTheme(darkMode: darkModeEnabled, light: lightModeEnabled)
//
//                    })
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 1, x: 0, y: 0)
                
                
                HStack{
                    Text ("Help")
                    Spacer()
                }
                .padding([.top, .leading])
                
                HStack{
                    Image(systemName: "doc")
                    Text("Version")
                    Spacer()
                    Text("1.0.3").bold()
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 1, x: 0, y: 0)
                
                HStack{
                    Image(systemName: "info.circle")
                    Text("About Application")
                    Spacer()
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 1, x: 0, y: 0)
                HStack{
                    Image(systemName: "phone")
                    Text("Contact")
                    Spacer()
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 1, x: 0, y: 0)
            }
            .padding(20)
            Spacer()
        
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(darkModeEnabled: .constant(false), lightModeEnabled: .constant(false))
    }
}
