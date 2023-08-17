//
//  AboUsCresnView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct AboUsCresnView: View {
    var body: some View {
        ZStack{
            VStack{
                
                AsyncImage(url: URL(string: "https://cresna.id/wp-content/uploads/2022/05/photo_2022-05-29_00-27-11-1000x540.jpg"), content: {image in image.resizable()
                        .frame(width: deviceWidth, height: deviceHeight/3)
                        .edgesIgnoringSafeArea(.all)
                },
                           placeholder: {
                               ProgressView()
                           })
                Spacer()
            }
            .zIndex(-1)
            
            ScrollView{
                
            }
            .frame(width: deviceWidth, height: 600)
            .background(.pink)
        }
    }
}

struct AboUsCresnView_Previews: PreviewProvider {
    static var previews: some View {
        AboUsCresnView()
    }
}
