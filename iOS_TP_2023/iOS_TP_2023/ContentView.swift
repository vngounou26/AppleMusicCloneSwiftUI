//
//  ContentView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        TabView{
            VStack {
                Button(action: {
                                if colorScheme == .light {
                                    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                                        windowScene.windows.first?.overrideUserInterfaceStyle = .dark
                                    }
                                } else {
                                    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                                        windowScene.windows.first?.overrideUserInterfaceStyle = .light
                                    }
                                }
                            }) {
                                Text("Toggle Theme")
                            }
                            .padding()
                        .buttonStyle(.borderedProminent)
                    }
                .tabItem{
                    Label("Ecouter",systemImage: "play.circle.fill")
                }
            Text("In Comming")
                .tabItem{
                    Label("Explorer",systemImage: "square.grid.2x2.fill")
                }
            BibliothequeView(albums: Stub().generateRandomAlbums())
                .tabItem{
                    Label("Bibliotêque",systemImage: "square.stack.fill")
                }
                //.preferredColorScheme(.dark)
            Text("In Comming")
                .tabItem{
                    Label("Rechercher", systemImage: "magnifyingglass")
                }
            
        }.background(Color.white)
        .accentColor(Color("customColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
