//
//  UsPaLoginView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct UsPaLoginView: View {
    
    @State var UNameVar : String = ""
    @State var PassVar : String = ""
    
    @Binding public var registerState: Bool

    var body: some View {
            VStack{
                
                HStack{
                    Text("Sign-In")
                        .font(.system(size: 30,weight: .bold))
                        .foregroundColor(.cyan)
                    Spacer()
                }
                .padding([.leading, .top], 20)
                
                spacerCustom(spaceDown: 30)
                
                VStack{
                    HStack{
                        Text("Username")
                            .padding(.leading, 20)
                            .font(.system(size: 15,weight: .bold))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                    TextField("User Name", text: $UNameVar)
                        .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 20)
                }
                .padding(.bottom, 20)
                
                VStack{
                    HStack{
                        Text("Password")
                            .padding(.leading, 20)
                            .font(.system(size: 15,weight: .bold))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                    TextField("Password", text: $UNameVar)
                        .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 20)
                }
                
                Button("SIGN-IN", action: {
                    print("sign in")
                })
                .frame(width: deviceWidth - 90, height: 60)
                .background(.cyan)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.system(size: 20,weight: .bold))
                .padding(.top, 20)
                .padding(.bottom, 30)

                
                ThirdPartyLoginView().padding(.bottom, 30)
                
                HStack{
                    Text("dont have an account? ")
                    
                    Button("Sign up", action: {
                        print("signup")
                        
                        registerState = true
                    })
                    .foregroundColor(.orange)
                    .font(.system(size: 25,weight: .bold))
                }
                .padding(.bottom, 20)

//                Spacer()
                
            }
            .frame(width: deviceWidth - 50)
            .background(.ultraThinMaterial)
            .cornerRadius(20)

    }
}

struct UsPaLoginView_Previews: PreviewProvider {
    
    @State static var value : Bool = false
    
    static var previews: some View {
        UsPaLoginView(registerState: $value)
    }
}

struct spacerCustom: View {
    var spaceDown: CGFloat

    var body: some View {
        VStack{
            Text("")
        }
        .frame(height: spaceDown)
    }
}
