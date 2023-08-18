//
//  LogoView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://cresna.id/wp-content/uploads/2022/05/CRESNA-LOGO-Shadow-300x40.png"), content: {
                image in image.resizable()
                    .scaledToFit()
                    .frame(width: deviceWidth/2)
            },                       
                       placeholder: {
                           ProgressView()
                       })

        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
