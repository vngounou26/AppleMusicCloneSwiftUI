//
//  Stub.swift
//  iOS_TP_2023
//
//  Created by etudiant on 16/05/2023.
//

import Foundation
import Fakery

public struct Stub{
    func generateRandomAlbums() -> [Album] {

        var albums: [Album] = []
        
        for i:Int in 0..<12 {
            let faker = Faker()
            let album = Album(
                Title:faker.lorem.words(amount: 4),
                Description:faker.lorem.sentences(amount: 2),
                image: "album\(i)"
            )
            albums.append(album)
            
        }
        
        return albums
    }
}
