//
//  ButtonCustomView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct ButtonCustomView: View {
    @State var checkPrint :String = "defCheck"
    @State var action : () -> Void
    @State var imageType : String = "SYSTEM"
    @State var imageString :String = "https://freepngimg.com/thumb/facebook/62487-bluetie-icons-computer-facebook-login-icon-email.png"
    
    @State var imageWidth : CGFloat = 50
    @State var imageHeight : CGFloat = 50

    var body: some View {
        Button(action: {
            print(checkPrint)
            action()
        })
        {
            if imageType == "URL"{
                AsyncImage(url: URL(string: imageString), content: {image in image.resizable()
                        .frame(width: imageWidth, height: imageHeight)
                },
                           placeholder: {
                    ProgressView()
                })
            }else if imageType == "SYSTEM"{
                Image(systemName: "house.circle.fill")
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
            }else if imageType == "ASSET"{
                Image(systemName: "x.circle")
                    .resizable()
                    .frame(width: imageWidth, height: imageHeight)
            }
        }.padding(.horizontal, 5)
            .foregroundColor(.gray)
    }
}

struct ButtonCustomView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCustomView( action: {
            print("pss action")
        })
    }
}
