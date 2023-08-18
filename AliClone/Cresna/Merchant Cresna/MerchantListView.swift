//
//  MerchantListView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct MerchantListView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Merchant")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding()
            
            MerchantThumbCresnaView(thumbType: "Text", imageString: "https://cdn.midjourney.com/0fc7b9b6-831d-4469-b218-8dde5c143a58/0_3.png", thumbString: "PT. ANDALAN AUTO PRIMA (ANDALAN GROUP) - BENGKEL RESMI")

            MerchantThumbCresnaView(thumbType: "Image", imageString: "https://cdn.midjourney.com/0fc7b9b6-831d-4469-b218-8dde5c143a58/0_3.png", thumbString: "")

        }
    }
}

struct MerchantListView_Previews: PreviewProvider {
    static var previews: some View {
        MerchantListView()
    }
}
