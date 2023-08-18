//
//  AboUsHistView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct AboUsHistView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Indonesia’s Official Hyundai Creta Owner Community")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding([.leading,.top
                             ], 20)
                
                Spacer()
            }
            
            spacerCustom(spaceDown: 10)
            
            HStack{
                Text("CRESNA adalah komunitas pemilik dan pengguna Hyundai Creta pertama dan terbesar di Indonesia, didirikan pada tanggal hari Jumat tanggal 25 Maret 2022 dan resmi di deklarasikan di booth Hyundai di acara IIMS (Indonesia International Motor Show) pada hari Sabtu tanggal 9 April 2022")
                    .font(.system(size: 10, weight: .regular))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding([.leading,.trailing
                             ], 20)
                
                Spacer()
            }

            spacerCustom(spaceDown: 10)
            
            HStack{
                Text("Hingga saat ini anggota CRESNA sudah berjumlah total 312 member yang tersebar di seluruh Indonesia (30 Jan 2023)")
                    .font(.system(size: 10, weight: .regular))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding([.leading,.trailing
                             ], 20)

                Spacer()
            }
            
            spacerCustom(spaceDown: 10)

            HStack{
                Text("Berikut tautan Anggaran Dasar Anggaran Rumah Tangga CRESNA ")
                    .font(.system(size: 10, weight: .regular))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 20)
                
                Spacer()
            }
            
            HStack{
                
                Button("(AD/ART)") {
                    print("ad/art")
                }.foregroundColor(.orange)
                    .font(.system(size: 10, weight: .regular))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 20)
                
//                                    Spacer()
            }
            
            spacerCustom(spaceDown: 10)

        }
    }
}

struct AboUsHistView_Previews: PreviewProvider {
    static var previews: some View {
        AboUsHistView()
    }
}
