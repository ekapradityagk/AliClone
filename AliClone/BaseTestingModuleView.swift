//
//  BaseTestingModuleView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct BaseTestingModuleView: View {
    var body: some View {
        VStack{
            // view start from here
            
            HStack{
                Button(action: {
                    print("google")
                }) {
                    AsyncImage(url: URL(string: "https://cdn-teams-slug.flaticon.com/google.jpg"), content: {image in image.resizable()
                            .frame(width: 50, height: 50)
                    }) {
                        ProgressView()
                    }
                }
                .padding(.vertical,50)

                Button(action: {
                    print("facebook")
                }) {
                    AsyncImage(url: URL(string: "https://freepngimg.com/thumb/facebook/62487-bluetie-icons-computer-facebook-login-icon-email.png"), content: {image in image.resizable()
                            .frame(width: 50, height: 50)
                    }) {
                        ProgressView()
                    }
                }
                .padding(.vertical,50)

                Button(action: {
                    print("discord")
                }) {
                    AsyncImage(url: URL(string: "https://cdn.logojoy.com/wp-content/uploads/20210422095037/discord-mascot.png"), content: {image in image.resizable()
                            .frame(width: 50, height: 50)
                    }) {
                        ProgressView()
                    }
                }
                .padding(.vertical,50)

            }
            .padding(10)
            .frame(width: deviceWidth,height: 100)
//            .background(.white)
            
            // view stop here
           }
           .frame(width: deviceWidth, height: deviceHeight)
           .background(.gray)

        
    }
}

struct BaseTestingModuleView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTestingModuleView()
    }
}
