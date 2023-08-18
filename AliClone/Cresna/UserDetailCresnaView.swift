//
//  UserDetailCresnaView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct UserDetailCresnaView: View {
    var body: some View {
        VStack{
            
            spacerCustom(spaceDown: 2)
                .frame(width: deviceWidth-20)
                .background(Color.gray)
                .padding(.bottom,10)
            HStack{
                Text("Nomor Punggung")
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Spacer()
            }
            
            spacerCustom(spaceDown: 2)
                .frame(width: deviceWidth-20)
                .background(Color.gray)
            
            HStack{
                Text("CR-0729")
                    .padding(.horizontal)
                
                Spacer()
            }
            .padding(.bottom, 20)

            
            HStack{
                Text("Plat Nomor Kendaraan")
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Spacer()
            }
            
            spacerCustom(spaceDown: 2)
                .frame(width: deviceWidth-20)
                .background(Color.gray)
            HStack{
                Text("B 1773 HFU")
                    .padding(.horizontal)
                
                Spacer()
            }
            .padding(.bottom, 20)

            HStack{
                Text("Chapter")
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                Spacer()
            }
            spacerCustom(spaceDown: 2)
                .frame(width: deviceWidth-20)
                .background(Color.gray)
            HStack{
                Text("Depok Bogor Raya")
                    .padding(.horizontal)
                
                Spacer()
            }
            .padding(.bottom, 20)


            
        }
    }
}

struct UserDetailCresnaView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailCresnaView()
    }
}
