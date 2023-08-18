//
//  HomeBaseCresnaView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct HomeBaseCresnaView: View {
    var body: some View {
        VStack{
            
            LogoView()
                .frame(width: deviceWidth, height: 40)
                .padding(.top, 50)
                .padding(.bottom, 20)
                .background(Color.black)
                .ignoresSafeArea()
            
            ScrollView{
//                GalleryCresnaTNView()
//                GalleryDetailView()
                AboUsCresnView()
//                MerchantListView()
            }
            Spacer()
            VStack{
                BottomMenuCresView()
            }
                .padding(.top, 30)
                .padding(.bottom, 50)
                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 100)
                            .background(Color.white .ignoresSafeArea())
                            .shadow(color: .gray, radius: 20, x: 0, y: -10)
                            .border(width: 2, edges: [.top], color: .gray)

            // view stop here
           }
           .frame(width: deviceWidth, height: deviceHeight)
           .background(.white)
        
    }
}

struct HomeBaseCresnaView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBaseCresnaView()
    }
}

struct EdgeBorder: Shape {
    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        edges.map { edge -> Path in
            switch edge {
            case .top: return Path(.init(x: rect.minX, y: rect.minY, width: rect.width, height: width))
            case .bottom: return Path(.init(x: rect.minX, y: rect.maxY - width, width: rect.width, height: width))
            case .leading: return Path(.init(x: rect.minX, y: rect.minY, width: width, height: rect.height))
            case .trailing: return Path(.init(x: rect.maxX - width, y: rect.minY, width: width, height: rect.height))
            }
        }.reduce(into: Path()) { $0.addPath($1) }
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
