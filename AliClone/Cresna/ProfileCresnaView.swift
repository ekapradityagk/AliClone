//
//  ProfileCresnaView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct ProfileCresnaView: View {
    
    @State var imageString : String = "https://cdn.midjourney.com/0fc7b9b6-831d-4469-b218-8dde5c143a58/0_3.png"
    
    @State var photoString : String = "https://cresna.id/wp-content/uploads/ultimatemember/452/profile_photo-190x190.jpeg?1692395478"
    
    @State var userName : String = "Eka PGK"

    var body: some View {
        VStack{
            ZStack{
                VStack{
                    AsyncImage(url: URL(string: imageString), content: {image in image.resizable()
                            .scaledToFill()
                            .edgesIgnoringSafeArea(.all)
                    },
                               placeholder: {
                                   ProgressView()
                               })
                    .frame(width: deviceWidth, height: 250)
                    .cornerRadius(0)
                    .ignoresSafeArea(.all)
                    
                    Spacer()
                }
                
                VStack{
                    spacerCustom(spaceDown: 100)
                    HStack{
                        AsyncImage(url: URL(string: photoString), content: {image in image.resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                                .background(Color.green)
                                .clipShape(Circle())
                                .shadow(color: .black, radius: 5, x: 1, y: 1)
                        },
                                   placeholder: {
                                       ProgressView()
                                   })
                        
                        Text(userName)
                            .padding(.top, 50)
                            .padding()
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                }
                .padding()

            }
            .frame(width: deviceWidth, height: 280)

            UserDetailCresnaView()
            
            Spacer()
        }
    }
}

struct ProfileCresnaView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCresnaView()
    }
}
