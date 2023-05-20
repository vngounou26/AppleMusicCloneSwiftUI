//
//  BibliothequeView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 16/05/2023.
//

import SwiftUI

struct BibliothequeView: View {
    let comlumn=[GridItem(.flexible()),GridItem(.flexible())]
    let albums:[Album]
    var body: some View {
        NavigationView{
            NavigationLink{
                BodcastView()
            }label: {
                ScrollView{
                    LazyVGrid(columns: comlumn,spacing: 20){
                        ForEach(albums) { album in
                            CardDisplay(album: album)
                        }
                        
                    }.padding()
                }
            }.navigationTitle("Podcasts")
                .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack{
                        Image(systemName: "chevron.backward")
                            .foregroundColor(Color("customColor"))
                        Text("Bibliothèque")
                            .foregroundColor(Color("customColor"))
                    }
                }
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image("ellipsis.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                            .foregroundColor(Color("customColor"))
                    }
                }
           
        }
        .navigationTitle("Podcasts")
            .toolbar{
            ToolbarItemGroup(placement: .bottomBar){
                
                ReadingView()
            }
        }
        
        
    }
    
    
    struct BibliothequeView_Previews: PreviewProvider {
        
        static var previews: some View {
            BibliothequeView(albums: Stub().generateRandomAlbums())
        }
    }
}
