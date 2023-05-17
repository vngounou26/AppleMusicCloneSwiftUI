//
//  Stub.swift
//  iOS_TP_2023
//
//  Created by etudiant on 16/05/2023.
//

import Foundation

public struct Stub{
    func generateRandomAlbums() -> [Album] {
        let albumTitles = ["Album 1", "Album 2", "Album 3", "Album 4", "Album 5", "Album 6", "Album 7", "Album 8", "Album 9", "Album 10", "Album 11", "Album 12"]
        let albumDescriptions = ["Description 1", "Description 2", "Description 3", "Description 4", "Description 5", "Description 6", "Description 7", "Description 8", "Description 9", "Description 10", "Description 11", "Description 12"]
        let albumImages = ["album1", "album2", "album3", "album4", "album5", "album6", "album7", "album8", "album9", "album10", "album11","album12"]

        var albums: [Album] = []
        
        for index in 0..<12 {
            let title = albumTitles[index]
            let description = albumDescriptions[index]
            let image = albumImages[index]
            
            let album = Album(Title: title, Description: description, image: image)
            albums.append(album)
        }
        
        return albums
    }
}
