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
            NavigationLink(destination: BodcastView(),
                           label: {
                ScrollView{
                    LazyVGrid(columns: comlumn,spacing: 20){
                        ForEach(albums) { album in
                            CardDisplay(album: album)
                        }
                        
                    }.padding()
                }
            }).navigationTitle("Podcasts")
           
        }
        
    }
    
    
    struct BibliothequeView_Previews: PreviewProvider {
        
        static var previews: some View {
            BibliothequeView(albums: Stub().generateRandomAlbums())
        }
    }
}
