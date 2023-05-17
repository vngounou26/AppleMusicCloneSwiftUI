//
//  CardDisplay.swift
//  iOS_TP_2023
//
//  Created by etudiant on 16/05/2023.
//

import SwiftUI



struct CardDisplay: View {
    let album:Album
    var body: some View {
        VStack(alignment: .leading){
            Image(album.image.description)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 150)
                .cornerRadius(10)
            Text(album.Title)
                .bold()
                .font(.title2)
                
            Text(album.Description)
                .foregroundColor(.gray)
            
        }
    }
}



struct CardDisplay_Previews: PreviewProvider {
    
        
    static var previews: some View {
        CardDisplay(album: Stub().generateRandomAlbums()[0])
    }
}
