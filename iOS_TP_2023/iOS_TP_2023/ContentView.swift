//
//  ContentView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BodcastView()
                .tabItem{
                    Label("Ecouter",systemImage: "play.circle.fill")
                }
            BodcastView()
                .tabItem{
                    Label("Explorer",systemImage: "square.grid.2x2.fill")
                }
            BibliothequeView(albums: Stub().generateRandomAlbums())
                .tabItem{
                    Label("Bibliotêque",systemImage: "square.stack.fill")
                }
            BodcastView()
                .tabItem{
                    Label("Rechercher", systemImage: "magnifyingglass")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
