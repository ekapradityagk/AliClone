//
//  BaseAppView.swift
//  AliClone
//
//  Created by Aisa Utomo on 30/07/23.
//

import SwiftUI

struct BaseAppView: View {
    @State var topMenuChosen :String = "Feed"
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Button(action: {print("change location")}) {
                        Label("", systemImage: "mappin.and.ellipse")
                    }
                    .padding(.leading, 10)

                    Spacer()

                    Button("Feed", action: {
                        topMenuChosen = "Feed"
                        print("Feed")
                    })

                    Button("Explore", action: {
                        topMenuChosen = "Explore"

                        print("explore")
                    })
                    Button("Plus", action: {
                        topMenuChosen = "Plus"

                        print("plus")
                    })
                                        
                    Spacer()
                    Button(action: {print("change location")}) {
                        Label("", systemImage: "ellipsis.message")
                    }


                }
                .font(.system(size: 20))
            }
            .frame(width:deviceWidth, height: 40)
            .foregroundColor(.white)
            .background(.blue)
            
            VStack{
                if topMenuChosen == "Feed"{
                    FeedView()
                }else if topMenuChosen == "Explore"{
                    ExploreView()
                }else if topMenuChosen == "Plus"{
                    PlusView()
                }
            }
            .background(.cyan)
            Spacer()
            
            VStack{
                Text("bottom view")
            }
            .frame(width:deviceWidth, height: 40)
            .background(.cyan)
        }
    }
}

struct BaseAppView_Previews: PreviewProvider {
    static var previews: some View {
        BaseAppView()
    }
}
