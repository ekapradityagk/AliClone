//
//  FeedView.swift
//  AliClone
//
//  Created by Aisa Utomo on 31/07/23.
//

import SwiftUI

struct FeedView: View {
    @State var FeedSearch = ""
    
    var body: some View {
        VStack{
            ScrollView{
                
                // search box
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField(
                      "Amazing finds & must haves",
                      text: $FeedSearch
                    )
                }
                .padding(10)
                .background(.white)
                .padding(.horizontal)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.black, lineWidth: 2)
                        .padding(.horizontal, 20)
                )

            }
            .padding(.top, 10)
        }
        .frame(width: deviceWidth)
//        .background(.green)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
