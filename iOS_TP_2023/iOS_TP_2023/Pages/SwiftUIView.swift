//
//  SwiftUIView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 12/05/2023.
//

/*import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins
import Combine

struct BackView: View {
    var body: some View {
        Image("votre_image")
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.dominantColorFromImage("votre_image"))
    }
}

extension Color {
    static func dominantColorFromImage(_ imageName: String) -> Color {
        guard let uiImage = UIImage(named: imageName) else {
            return .clear
        }
        
        guard let ciImage = CIImage(image: uiImage) else {
            return .clear
        }
        
        let filter = CIFilter(name: "CIAreaAverage", parameters: [kCIInputImageKey: uiImage, kCIInputExtentKey: CIVector(cgRect: extend)])!
        filter.inputImage = ciImage
        
        guard let outputImage = filter.outputImage else {
            return .clear
        }
        
        let context = CIContext()
        guard let colorPixelBuffer = context.render(outputImage, to: CVPixelBuffer.self) else {
            return .clear
        }
        
        let color = colorPixelBuffer.colorAt(x: 0, y: 0)
        
        return Color(color)
    }
}
*/


