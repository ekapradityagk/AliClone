//
//  MiniThumbnailView.swift
//  AliClone
//
//  Created by Aisa Utomo on 02/08/23.
//

import SwiftUI

struct MiniThumbnailView: View {
    var body: some View {
        VStack{
            VStack{
                
            }
            .frame(width: 160,height: 160)
            .background(.red)
            .cornerRadius(15)
            
            HStack{
                VStack(alignment: .leading){
                    Text("Current Price")
                    Text("Before Price")
                    Text("additional info")
                }
                
                Spacer()
            }
        }
        .frame(width: 160,height: 240)
        .padding(.horizontal,5)

    }
}

struct MiniThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        MiniThumbnailView()
    }
}
