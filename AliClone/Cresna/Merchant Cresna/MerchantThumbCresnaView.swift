//
//  MerchantThumbCresnaView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct MerchantThumbCresnaView: View {
    @State var thumbType : String = "Image"
    @State var imageString : String = "https://cdn.midjourney.com/0fc7b9b6-831d-4469-b218-8dde5c143a58/0_3.png"
    @State var thumbString : String = "PT. ANDALAN AUTO PRIMA (ANDALAN GROUP) - BENGKEL RESMI"

    var body: some View {
        VStack{
            if thumbType == "Text"{
                Text(thumbString)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: deviceWidth - 40, height: 150)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }else if thumbType == "Image"{
                AsyncImage(url: URL(string: imageString), content: {image in image.resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                },
                           placeholder: {
                               ProgressView()
                           })
                .frame(width: deviceWidth - 40, height: 150)
                .background(.blue)
                .cornerRadius(20)

            }
        }
        .padding()
        .frame(width: deviceWidth - 40, height: 150)
        .background(.blue)
        .cornerRadius(20)
        .padding(.bottom, 10)
    }
}

struct MerchantThumbCresnaView_Previews: PreviewProvider {
    static var previews: some View {
        MerchantThumbCresnaView()
    }
}
