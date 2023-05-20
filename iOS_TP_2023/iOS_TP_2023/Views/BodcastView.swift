//
//  BodcastView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI
import Combine
import Fakery

struct BodcastView: View {
    @State private var showFullText = false
    @State private var isPlay=true
    @State private var color: Color = .gray
    @State private var textBtnColor: Color = .black
    @State private var textColor: Color = .black
    @State private var backgoundColor: Color = .black
    private let faker=Faker()
    private var images:[String]=["album0","album1","album2","album3","album4","album5","album6","album7","album8","album9","album10","album11","album12"]
    
    var body: some View {
        let albumTilte = faker.company.name()
        VStack{
            let imageToDisplay = images.randomElement()
            //ScrollView{
                NavigationView{
                    ZStack{
                        color.ignoresSafeArea()
                        ScrollView{
                                VStack{
                                Image(imageToDisplay!)
                                    .cornerRadius(15)
                                    .scaledToFit()
                                    .shadow(radius: 20)
                                    .onReceive(Just(UIImage(named: imageToDisplay!))) { uiImage in
                                        if let averageColor =
                                            uiImage?
                                            .averageColor {
                                            self.color =
                                            Color(averageColor)
                                            textBtnColor=color.isLight() ? Color.white : Color.black
                                            backgoundColor=color.isLight() ? Color.black : Color.gray
                                            textColor=color.isLight() ? Color.black : Color.gray
                                        }
                                    }
                                Text(albumTilte)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.white)
                                    .lineLimit(1)
                                    .padding([.trailing,.leading])
                                HStack{
                                    Image(imageToDisplay!)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(maxWidth: 45)
                                        .tint(.white)
                                    Text(faker.commerce.productName())
                                        .font(.title2)
                                    Image(systemName: "chevron.right")
                                }.foregroundColor(.gray)
                                Button{
                                    isPlay.toggle()
                                }label: {
                                    HStack{
                                        Image(systemName: isPlay ? "play.fill":"pause.fill")
                                        Text("Demarrer l'épisode")
                                        
                                    }.padding()
                                    
                                }.background(backgoundColor)
                                    .cornerRadius(10)
                                    .foregroundColor(textBtnColor)
                                
                                ZStack(alignment: .bottomTrailing){
                                    Text("myTef uhenvbehiv ejvnhebvb ejkvb ejbvebk evbev bekjvevbekvbejvej bv evbeveb vekve bvk ehbv kevneve bvk ej vevbekv jevj evbejkvbevbejv ejvcegflk jejneiuvbiuvevnekvbrjebvex")
                                        .foregroundColor(textColor)
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
                                    Image("star.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                    Text("4.8 (458) .").foregroundColor(.gray)
                                    Text("Actualité .").foregroundColor(.gray)
                                    Text("Chaque semaine")
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.leading)
                                }
                                Divider()
                                DataView()
                            }
                        }
                    }
                }
            
        }.toolbar{
            ToolbarItem(placement: .principal){
                Text(albumTilte)
                    .lineLimit(1)
                
            }
            ToolbarItem(placement: .navigationBarTrailing){
                HStack{
                    Button{
                    }label: {
                        Image(systemName: "square.and.arrow.down")
                    }
                    Button{
                    }label: {
                        Image("ellipsis.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
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

struct BodcastView_Previewss: PreviewProvider {
    static var previews: some View {
        BodcastView().preferredColorScheme(.dark)
    }
}




extension UIImage {
    var averageColor: UIColor? {
        guard let inputImage = CIImage(image: self)
        else {
            return nil
            
        }
        let extent = inputImage.extent
        let context = CIContext(options: nil)
        let ciFilter = CIFilter(name: "CIAreaAverage", parameters: [kCIInputImageKey: inputImage, kCIInputExtentKey: CIVector(cgRect: extent)])!
        var bitmap = [UInt8](repeating: 0, count: 4); context.render(ciFilter.outputImage!, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: .RGBA8, colorSpace: nil)
        return UIColor(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255, alpha: 1.0)
        
    }
}

extension Color {
    func isLight() -> Bool {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        UIColor(self).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        let brightness = ((red * 299) + (green * 587) + (blue * 114)) / 1000
        return brightness > 0.3
    }
}
