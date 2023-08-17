//
//  ThirdPartyLoginView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct ThirdPartyLoginView: View {
    var body: some View {
        HStack{
            Spacer()
            Button(action: {
                print("google")
            }) {
                AsyncImage(url: URL(string: "https://cdn-teams-slug.flaticon.com/google.jpg"), content: {image in image.resizable()
                        .frame(width: 50, height: 50)
                },
                           placeholder: {
                               ProgressView()
                           })
            }
            .padding(.vertical,50)
            Spacer()

            Button(action: {
                print("facebook")
            })
            {
                AsyncImage(url: URL(string: "https://freepngimg.com/thumb/facebook/62487-bluetie-icons-computer-facebook-login-icon-email.png"), content: {image in image.resizable()
                        .frame(width: 50, height: 50)
                },
                           placeholder: {
                               ProgressView()
                           })
            }
            .padding(.vertical,50)
            Spacer()

            Button(action: {
                print("discord")
            }) {
                AsyncImage(url: URL(string: "https://cdn.logojoy.com/wp-content/uploads/20210422095037/discord-mascot.png"), content: {image in image.resizable()
                        .frame(width: 50, height: 50)
                },
                           placeholder: {
                               ProgressView()
                           })
            }
            Spacer()

        }
        .padding(10)
        .frame(width: deviceWidth,height: 100)

    }
}

struct ThirdPartyLoginView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPartyLoginView()
    }
}
