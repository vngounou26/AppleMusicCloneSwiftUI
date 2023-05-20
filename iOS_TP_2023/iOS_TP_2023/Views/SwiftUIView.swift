//
//  SwiftUIView.swift
//  iOS_TP_2023
//
//  Created by etudiant on 18/05/2023.
//

import SwiftUI
import Combine

struct SwiftUIView: View {
    @State private var color: Color = .white
    var body: some View {
        HStack{
            Button{
            }label: {
                HStack{
                    
                }.padding()
                
            }.background(Color.green)
                .cornerRadius(10)
                .frame(height: 300)
            Button{
            }label: {
                HStack{
                    
                }.padding()
                
            }.background(Color.green)
                .cornerRadius(10)
        }.frame(height: .infinity)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

extension UIImage {
    var FDGDGD: UIColor? {
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
