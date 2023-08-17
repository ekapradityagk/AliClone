//
//  UsPaRegisterView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

struct UsPaRegisterView: View {
    
    @State var UNameVar : String = ""
    @State var PassVar : String = ""

    @Binding public var registerState: Bool
    
    var body: some View {
        VStack{
            
            HStack{
                Text("Sign-Up")
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
            .padding(.bottom, 10)
            
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
            .padding(.bottom, 10)

            VStack{
                HStack{
                    Text("Confirm Password")
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
            
            Button("SIGN-UP", action: {
                print("Register")
            })
            .frame(width: deviceWidth - 90, height: 60)
            .background(.cyan)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.system(size: 20,weight: .bold))
            .padding(.top, 30)
            .padding(.bottom, 40)

            
            HStack{
                Text("already have an account? ")
                
                Button("Sign in", action: {
                    print("signin")
                    registerState = false
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

struct UsPaRegisterView_Previews: PreviewProvider {
    @State static var value : Bool = false

    static var previews: some View {
        UsPaRegisterView(registerState: $value)
    }
}
