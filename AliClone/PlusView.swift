//
//  PlusView.swift
//  AliClone
//
//  Created by Aisa Utomo on 31/07/23.
//

import SwiftUI

struct PlusView: View {
    var body: some View {
        VStack{
            ScrollView{
                Text("Plus")
            }
            .padding(.top, 10)
        }
        .frame(width: deviceWidth)
        .background(.indigo)
    }
}

struct PlusView_Previews: PreviewProvider {
    static var previews: some View {
        PlusView()
    }
}
