//
//  DataView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct DataView: View {
    let musicList = [
            Music(title: "Titre 1", artist: "Artiste 1", duration: "3:45"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 2", artist: "Artiste 2", duration: "4:20"),
            Music(title: "Titre 3", artist: "Artiste 3", duration: "2:55")]
    var body: some View {
        Grid(alignment: .leading){
            GridRow{
                HStack{
                    Text("Episode")
                        .font(.title)
                        .bold()
                    Image(systemName: "chevron.down")
                        .font(.title)
                        .bold()
                    Spacer()
                    Text("Tout voir")
                        .foregroundColor(.purple)
                        
                }
            }.padding()
            GridRow{
                
                LazyVStack(spacing: 20){
                    ForEach(musicList){
                        music in
                        HStack{
                            Text(music.title)
                                .font(.headline)
                            Text(music.artist)
                                .font(.subheadline)
                            Text(music.duration)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
        Spacer()
    }
}

struct Music: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let duration: String
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
