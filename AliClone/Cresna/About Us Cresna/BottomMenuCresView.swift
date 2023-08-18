//
//  BottomMenuCresView.swift
//  AliClone
//
//  Created by Aisa Utomo on 18/08/23.
//

import SwiftUI

struct BottomMenuCresView: View {
    var body: some View {
        VStack{
            HStack{
                ButtonCustomView(checkPrint: "pass print", action: {
                    print("pass action")
                }, imageType: "SYSTEM", imageString: "house.circle.fill", imageWidth: 50, imageHeight: 50)
                ButtonCustomView(checkPrint: "pass print", action: {
                    print("pass action")
                }, imageType: "URL", imageString: "https://cdn-teams-slug.flaticon.com/google.jpg", imageWidth: 50, imageHeight: 50)
                
                ButtonCustomView(checkPrint: "pass print", action: {
                    print("pass action")
                }, imageType: "SYSTEM", imageString: "house.circle.fill", imageWidth: 50, imageHeight: 50)

                ButtonCustomView(checkPrint: "pass print", action: {
                    print("pass action")
                }, imageType: "URL", imageString: "https://freepngimg.com/thumb/facebook/62487-bluetie-icons-computer-facebook-login-icon-email.png", imageWidth: 50, imageHeight: 50)
                                    
                ButtonCustomView(checkPrint: "isi print", action: {
                    print("pass action")
                }, imageString: "https://cdn-teams-slug.flaticon.com/google.jpg", imageWidth: 50, imageHeight: 50)
            }
            .shadow(color: .gray, radius: 0, x: 0, y: 0)

        }
        

    }
}

struct BottomMenuCresView_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuCresView()
    }
}
