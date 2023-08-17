//
//  BaseLoginView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI


struct BaseLoginView: View {
    @State var registerState : Bool = false

    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: "https://cdn.midjourney.com/4dfd8ff1-1515-449e-91c6-e9f82556d758/0_0.png")).zIndex(-1)
                
                
//            AsyncImage(
//                            url: URL(string: "https://cdn.midjourney.com/4dfd8ff1-1515-449e-91c6-e9f82556d758/0_0.png"),
//                            content: { image in
//                                image.resizable()
//                                    .scaledToFill()
//                                     .frame(maxWidth: deviceWidth, maxHeight: deviceHeight)
//                            },
//                            placeholder: {
//                                ProgressView()
//                            }
//            ).zIndex(-1)
                

            VStack{
                
                
                if registerState {
                    UsPaRegisterView(registerState: $registerState)
                        .transition(AnyTransition.scale.animation(.easeInOut(duration: 1)))
                           
                }else{
                    UsPaLoginView(registerState: $registerState)
                        .transition(AnyTransition.scale.animation(.easeInOut(duration: 1)))
                           
                }
            }
            .frame(width: deviceWidth, height: deviceHeight)
//            .background(.white)
        }
        
    }
}

struct BaseLoginView_Previews: PreviewProvider {
    static var previews: some View {
        BaseLoginView()
    }
}
