//
//  ReadingView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 20/05/2023.
//

import SwiftUI

struct ReadingView: View {
    var body: some View {
        HStack(spacing: 20){
            Image("album0")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 40)
                .cornerRadius(10)
            VStack(alignment: .leading){
                Text("Nadie Sabe Nada")
                Text("29 avril 2023")
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "play.fill")
                .padding([.leading, .trailing], 10)
            Image(systemName: "gobackward.30")
                .padding([.leading, .trailing], 10)
        }
        .frame(maxHeight: 30)
    }
}

struct ReadingView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingView()
    }
}
