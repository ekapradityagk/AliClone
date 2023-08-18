//
//  GalleryDetailView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct GalleryDetailView: View {
    
    @State var detailArticle = "Komunitas Hyundai Creta pertama dan terbesar di Indonesia atau yang lebih dikenal dengan Creta Society Nusantara (Cresna), mengadakan touring dan Kopdar Akbar perdananya yang bertajuk Cresna Meetup 2023: Mengejar Prambanan pada tanggal 1-3 Juli 2023 di Yogyakarta. Touring ini merupakan touring ke-10 yang diselenggarakan oleh Cresna sejak dideklarasikan pada ajang Indonesia International Motor Show (IIMS) pada Maret 2022 silam."
    
    var body: some View {
        VStack{
            HStack{
                Text("Cresna Meetup 2023: Mengejar Prambanan")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding()
            
            AsyncImage(url: URL(string: "https://cresna.id/wp-content/uploads/2023/07/RK-2-102-905x613.jpg"), content: {image in image.resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: deviceWidth)
            },
                       placeholder: {
                           ProgressView()
                       })
            
            Text(detailArticle)
                .font(.body)
                .padding()

            Spacer()
        }
        .background(.white)
    }
}

struct GalleryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryDetailView()
    }
}
