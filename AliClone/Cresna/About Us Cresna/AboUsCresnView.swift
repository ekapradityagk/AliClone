//
//  AboUsCresnView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct AboUsCresnView: View {
    @State private var viewMode: ViewMode = .quarter
    
    var body: some View {
        ZStack{
            VStack{
                
                AsyncImage(url: URL(string: "https://cresna.id/wp-content/uploads/2022/05/photo_2022-05-29_00-27-11-1000x540.jpg"), content: {image in image.resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: deviceWidth, height: deviceHeight/3)
                },
                           placeholder: {
                               ProgressView()
                           })
                Spacer()
            }
            .zIndex(-1)
            
            ZStack{
                AboUsFlexView(viewMode: $viewMode) {
                    Button {
                        switch viewMode{
                        case .quarter:
                            viewMode = .full
                        case .full:
                            viewMode = .quarter
                        }
                    } label: {
                        VStack{
                            VStack{

                                AboUsHistView()
                                
                                LogoView()
                                    .padding()
                                    .background(.black)
                                
                                spacerCustom(spaceDown: 10)
                                
                                StructOrgView()
                                    .foregroundColor(.black)

                            }
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
            }
        }
    }
}

struct AboUsCresnView_Previews: PreviewProvider {
    static var previews: some View {
        AboUsCresnView()
    }
}
