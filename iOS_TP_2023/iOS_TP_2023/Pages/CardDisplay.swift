//
//  CardDisplay.swift
//  iOS_TP_2023
//
//  Created by etudiant on 16/05/2023.
//

import SwiftUI

struct CardDisplay: View {
    let album:Album
    @State private var albumImage: Image = Image(systemName: "phone")
    
    var body: some View {
        VStack(alignment: .leading){
            Image(album.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 150)
                .cornerRadius(10)
            Text(album.Title)
                .bold()
                .foregroundColor(Color("CustomDarck"))
                .font(.title3)
                .lineLimit(1)
                
            Text(album.Description)
                .foregroundColor(.gray)
                .lineLimit(1)
            
        }
        .onAppear {
            albumImage.data(url: URL(string: album.image)!) { image in
                albumImage = image
            }
        }
    }
}

struct CardDisplay_Previews: PreviewProvider {
    
        
    static var previews: some View {
        CardDisplay(album: Stub().generateRandomAlbums()[0])
    }
}

extension Image {
    func data(url: URL, completion: @escaping (Self) -> Void) {
    URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            DispatchQueue.main.async {
                completion(Image(uiImage: UIImage(data: data)!).resizable())
            }
        } else {
            DispatchQueue.main.async {
                completion(self.resizable())
            }
        }
    }.resume()
}
}
