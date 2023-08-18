//
//  TitleWDetView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct TitleWDetView: View {
    
    @State var titleDiv : String = "Dewan Penasehat"
    @State var firstMemberName : String = "Ary Yunanto CR-0008"
    @State var secondMemberName : String = "Marseli Ricardo CR-0005"

    var body: some View {
        VStack{
            HStack{
                Text(titleDiv)
                    .font(.system(size: 15, weight: .bold))
                    .padding(.horizontal, 20)
                
                Spacer()
            }
            
            spacerCustom(spaceDown: 5)
            
            HStack{
                Text(firstMemberName)
                    .font(.system(size: 10, weight: .regular))
                    .padding(.horizontal, 20)
                
                Spacer()
            }

            HStack{
                Text(secondMemberName)
                    .font(.system(size: 10, weight: .regular))
                    .padding(.horizontal, 20)
                
                Spacer()
            }

            spacerCustom(spaceDown: 10)
        }
    }
}

struct TitleWDetView_Previews: PreviewProvider {
    static var previews: some View {
        TitleWDetView()
    }
}

struct TitleWDetSingView: View {
    
    @State var titleDiv : String = "Dewan Penasehat"
    @State var memberName : String = "Ary Yunanto CR-0008"

    var body: some View {
        VStack{
            HStack{
                Text(titleDiv)
                    .font(.system(size: 15, weight: .bold))
                    .padding(.horizontal, 20)
                
                Spacer()
            }
            
            spacerCustom(spaceDown: 5)
            
            HStack{
                Text(memberName)
                    .font(.system(size: 10, weight: .regular))
                    .padding(.horizontal, 20)
                
                Spacer()
            }
            spacerCustom(spaceDown: 10)

        }
    }
}

struct TitleWDetSingView_Previews: PreviewProvider {
    static var previews: some View {
        TitleWDetSingView()
    }
}
