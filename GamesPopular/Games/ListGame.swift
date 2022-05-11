//
//  ListGame.swift
//  GamesPopular
//
//  Created by Macbook Pro on 07/05/22.
//

import SwiftUI



struct URLImage:View{
    
    let urlstring:String
    
    @State var data:Data?
    var body: some View{
        if let data = data, let uiimage = UIImage(data: data){
            Image(uiImage: uiimage).resizable().aspectRatio(contentMode: .fill).frame(width: 180, height: 130)
                .background(.white)
        }
        else{
            Image(systemName: "video").resizable().frame(width: 130, height: 70).aspectRatio(contentMode: .fit)
                .background(.gray).onAppear{
                    fetchdata()
                }
        }
    }
    
    private func fetchdata(){
        guard let url = URL(string: urlstring) else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){
            data, _ , _ in
            self.data = data
        }
        task.resume()
    }
}

struct ListGame: View {
    @StateObject var viewModel = ViewModel()
    
    @State private var searchText = ""
    
    
    private let gridmodel = [GridItem(.adaptive(minimum: 170))]
    
    @State var bottomleft:CGFloat = 0
    @State var bottomright:CGFloat = 0
    var body: some View {
        VStack{
            VStack(alignment:.leading){
                    Text("👋 Anbu!")
                        .padding(.horizontal,15)
                    Header()
                }
                Spacer()
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: gridmodel,spacing: 20){
                        ForEach(filteredNames, id: \.self){
                            game in
                            VStack{
                                ZStack(alignment: .bottomLeading){
                                    URLImage(urlstring: game.thumb)
                                    Rectangle().fill(Color.red).frame(width: 180, height: 34, alignment: .bottomLeading)
                                        .overlay(Text(game.savings + "$ OFF").foregroundColor(.white).bold())
                                    
                                }
                                .cornerRadius(3)
                                VStack{
                                    Text(game.title)
                                        .bold()
                                    Spacer()
                                    Button("Add to Wishlist"){
                                        
                                    }.background(.white).frame(height: 55).buttonStyle(.bordered)
                                    
                                }.frame(width:180,height: 100)
                                    .background(.white)
                                
                            }
                            .border(Color.gray)
                            .cornerRadius(10)
                            
                            
                        }
                    }.searchable(text: $searchText, prompt: "Cari")
                    .onAppear{
                        viewModel.fetch()
                        
                    }
                }.padding(10)
                
                
                    
            }
            .padding(4)
        }
        }
    
    var filteredNames:[Game]{
        if searchText.isEmpty{
            return viewModel.games
        }
        else{
            return viewModel.games.filter{
                $0.title.localizedStandardContains(searchText)
            }
        }
    }
    }


struct ListGame_Previews: PreviewProvider {
    static var previews: some View {
        ListGame()
    }
}
