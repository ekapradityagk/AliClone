//
//  IteminCartView.swift
//  AliClone
//
//  Created by Aisa Utomo on 02/08/23.
//

import SwiftUI

struct IteminCartView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{ // checkbox
                    
                }
                .frame(width: 20, height: 150)
                .background(.red)
                VStack{ // picture
                    
                }
                .frame(width: 120, height: 150)
                .background(.green)
                HStack{
                    VStack(alignment: .leading){ // detail
                        Text("item name")
                            .padding(.top, 5)
                        Text("type")
                        Text("price")
                        Text("disc")
                        Text("shipping term")
                        Text("shipping")
                        Text("store")

                        Spacer()
                    }
                }
                Spacer()
            }
        }
        .frame(width: deviceWidth, height: 150)
        .background(.blue)
    }
}

struct IteminCartView_Previews: PreviewProvider {
    static var previews: some View {
        IteminCartView()
    }
}
