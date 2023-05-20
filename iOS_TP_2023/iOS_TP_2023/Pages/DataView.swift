//
//  DataView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI
import Fakery

struct DataView: View {
    let musicList = generateMusicData()
    let calendar=Calendar.current
    var body: some View {
        ScrollView{
            Grid(alignment: .leading){
                GridRow{
                    HStack{
                        Text("Episode")
                            .font(.title)
                            .bold()
                        Image("downColor")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20)
                            .font(.title)
                            .bold()
                        Spacer()
                        Text("Tout voir")
                            .foregroundColor(.indigo)
                            
                    }
                }.padding()
                GridRow{
                    LazyVStack(alignment: .leading,spacing: 20){
                        ForEach(musicList){
                            music in
                            VStack(alignment: .leading,spacing: 5){
                                Text(music.date,formatter: DateFormatter.onlyDayAndMonth)
                                    .frame(maxWidth: 70)
                                    .lineLimit(1)
                                    .truncationMode(.head)
                                    
                                Text(music.title)
                                    .font(.headline)
                                Text(music.descrition)
                                    .font(.subheadline)
                                    .lineLimit(...3)
                                    .foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "play.fill")
                                    if music.isRead{
                                        ProgressView(value: 0.2)
                                            .frame(width: 50)
                                            .tint(.purple)
                                        Text("il reste \(music.duration) min")
                                            .font(.subheadline)
                                    }
                                    else{
                                        Text("\(music.duration) min")
                                            .font(.subheadline)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        
                                }.foregroundColor(.purple)
                            }
                        }
                    }
                    .padding()
                }
            }
        }.background(Color.white)
        
    }
}

extension DateFormatter {
    static let onlyDayAndMonth: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy d MMMM"
        return formatter
    }()
}

struct Music: Identifiable {
    
    
    let id = UUID()
    let title: String
    let artist: String
    let duration: String
    let date: Date
    let isRead:Bool
    let descrition:String
}

func generateMusicData() -> [Music] {
    let faker = Faker()
    var musicData = [Music]()
    
    for i:Int in 1...10 {
        let music = Music(
            title: faker.lorem.words(amount: 3) ,
            artist:faker.name.name(),
            duration: faker.commerce.price().description,
            date: faker.date.backward(days: i),
            isRead: i/3==0 ? true:false,
            descrition: faker.lorem.sentences(amount: 6)
        )
        musicData.append(music)
    }
    
    return musicData
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
