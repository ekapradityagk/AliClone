//
//  MidThumbnailView.swift
//  AliClone
//
//  Created by Aisa Utomo on 02/08/23.
//

import SwiftUI

struct MidThumbnailView: View {
    var body: some View {
        VStack{
            VStack{
                VStack{ // picture
                    
                }
                .frame(width: deviceWidth/2 - 10, height: 250 /* need to change to dynamic later */ )
                .background(.green)
                .cornerRadius(15)

                HStack{
                    VStack(alignment: .leading){ // price
                        Text("rp 22222")
                        Text("harga coret")
                        Text("add info harga")
                        Text("tipe promo")
                        Text("qty sold")
                        Text("jenis")
                        Text("add infos")
                    }
                    .font(.system(size: 15))
                    .padding(.leading, 10)
                    .padding(.bottom, 10)

                    Spacer()

                }
            }
            .frame(width: deviceWidth/2 - 10)
        }
//        .background(.blue)
    }
}

struct MidThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        MidThumbnailView()
    }
}
