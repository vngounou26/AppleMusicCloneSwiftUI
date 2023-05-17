//
//  BodcastView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct BodcastView: View {
    @State private var showFullText = false
    @State private var isPlay=true
    
    var body: some View {
        ScrollView{
            NavigationView{
                VStack{
                    Image("faly2")
                            .resizable()
                            .cornerRadius(15)
                            .scaledToFit()
                            .frame(maxWidth: 300,maxHeight: 300)
                            .shadow(radius: 20)
                        Text("Le Code à changé")
                            .font(.title)
                            .bold()
                        HStack{
                            Image("faly2")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(maxWidth: 45)
                            Text("France inter")
                                .font(.title2)
                                .foregroundColor(.gray)
                            Image(systemName: "chevron.right")
                        }
                        Button{
                            isPlay.toggle()
                        }label: {
                            HStack{
                                Image(systemName: isPlay ? "play.fill":"pause.fill")
                                Text("Demarrer l'épisode")
                            }
                        }.buttonStyle(.borderedProminent)
                        
                        ZStack(alignment: .bottomTrailing){
                            Text("myTef uhenvbehiv ejvnhebvb ejkvb ejbvebk evbev bekjvevbekvbejvej bv evbeveb vekve bvk ehbv kevneve bvk ej vevbekv jevj evbejkvbevbejv ejvcegflk jejneiuvbiuvevnekvbrjebvex")
                                .foregroundColor(.gray)
                                .lineLimit(showFullText ? nil:3)
                                .padding(10)
                            
                            
                            Button(action: {
                                showFullText.toggle()
                                
                            }) { Text(showFullText ? "Moins" : "Plus")
                                    .foregroundColor(.black)
                                
                            }
                            .shadow(color: .black,radius: 40)
                            .buttonStyle(.bordered)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 6))
                        }
                        
                        HStack{
                            Image(systemName: "star.fill")
                            Text("4.8 (458) .")
                            Text("Actualité .")
                            Text("Chaque semaine")
                                .multilineTextAlignment(.leading)
                            
                            
                            
                        }
                        Divider()
                        DataView()
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        ToolbarItemGroup(placement: .navigationBarLeading){
                            Image(systemName: "chevron.left")
                            Text("Podcast")
                                .foregroundColor(.purple)
                                .bold()
                            Text("le monde à changer")
                                .multilineTextAlignment(.center)
                            
                        }
                        ToolbarItemGroup(placement: .navigationBarTrailing){
                            
                            Image(systemName: "arrow.down")
                                .resizable()
                                .imageScale(.medium)
                                .overlay(Circle()
                                    .fill(.purple)
                                    .frame(width: 30,height: 30)
                                    .opacity(0.2))
                                .padding(.trailing,2)
                            
                            Image(systemName: "pause")
                                .resizable()
                                .imageScale(.small)
                                .overlay(Circle()
                                    .fill(.purple)
                                    .frame(width: 10,height: 10)
                                    .opacity(0.2))
                                .position(x:-8,y: 15)
                                
                            Image(systemName: "ellipsis")
                                .resizable()
                                .imageScale(.medium)
                                .overlay(Circle()
                                    .fill(.purple)
                                    .frame(width: 30,height: 30)
                                    .opacity(0.2))
                                .padding(.trailing,4)
                                
                            
                        }
                    }
                }
        }
    }
}

            
            
struct BodcastView_Previews: PreviewProvider {
    static var previews: some View {
        BodcastView()
    }
}
