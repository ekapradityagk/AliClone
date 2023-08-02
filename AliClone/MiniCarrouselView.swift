//
//  MiniCarrouselView.swift
//  AliClone
//
//  Created by Aisa Utomo on 02/08/23.
//

import SwiftUI

struct MiniCarrouselView: View {
    var body: some View {
        VStack{ // base
            
            VStack{ // top static
                HStack{
                    VStack{
                        Text("3 for 1$")
                        Text("choice day")
                    }
                    .padding(.leading, 10)
                    Spacer()
                }
            }
            .background(.red)
                        
            ScrollView(.horizontal){
                HStack{ // bottom carrousell
                    MiniThumbnailView()
                    MiniThumbnailView()
                    MiniThumbnailView()
                    MiniThumbnailView()
                }.padding(.horizontal, 5)
            }
        }
        .frame(width: deviceWidth,height: 300)
        .background(.blue)
    }
}

struct MiniCarrouselView_Previews: PreviewProvider {
    static var previews: some View {
        MiniCarrouselView()
    }
}
