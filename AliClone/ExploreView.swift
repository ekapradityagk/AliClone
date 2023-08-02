//
//  ExploreView.swift
//  AliClone
//
//  Created by Aisa Utomo on 31/07/23.
//

import SwiftUI

struct ExploreView: View {
    @State var ExploreSearch = ""
    
    var body: some View {
        VStack{
            ScrollView{
                
                VStack{
                    // search box
                    HStack{
                        Image(systemName: "camera")
                        TextField(
                            "Amazing finds & must haves",
                            text: $ExploreSearch
                        )
                        Image(systemName: "magnifyingglass")
                    }
                    .padding(10)
                    .background(.white)
                    .padding(.horizontal)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .padding(.horizontal, 20)
                    )
                    
                    HStack{
                        Spacer()
                        Button{
                            print("coins")
                        }
                    label: {
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(10)
                            .background(.pink)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                        
                        Spacer()
                        
                        Button{
                            print("bag")
                        }
                    label: {
                        Image(systemName: "bag.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(10)
                            .background(.pink)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                        
                        Spacer()
                        
                        Button{
                            print("game")
                        }
                    label: {
                        Image(systemName: "gamecontroller.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(10)
                            .background(.pink)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                        
                        Spacer()
                        
                        Button{
                            print("disc")
                        }
                    label: {
                        Image(systemName: "percent")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(10)
                            .background(.pink)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                        
                        Spacer()
                        
                    }
                    .padding(.vertical, 10)
                    
                    HStack{
                        Text("Your exclusive price")
                            .padding(.leading, 20)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .frame(height: 40)
                    .background(.brown)
                    
                    
                    MiniCarrouselView()
                    MiniCarrouselView()
                    
                    
                }
            }
            .padding(.top, 10)
        }
        .frame(width: deviceWidth)
        //        .background(.brown)
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
