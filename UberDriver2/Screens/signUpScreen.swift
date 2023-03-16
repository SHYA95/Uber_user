//
//  signUpScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 27/02/2023.
//

import SwiftUI

struct SignUpScreen: View {
    @State var isLoginScreen: Bool = false
    var body: some View {
        VStack{
            Image("Group 3")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.white)
                .padding(.top,40)
            Text("Create an account")
                .font(.footnote)
            Spacer()
            CustomTextField(userName: "", placeHolder: "user name", Icon: "profileIcon",w:20,h: 25).padding(10.0)
            CustomTextField(userName: "", placeHolder: "phone number", Icon: "phoneIcon",w:30,h: 50).padding(10.0)
            CustomTextField(userName: "", placeHolder: "Email", Icon: "emailIcon",w:23,h: 20).padding(10.0)
            Button("  Sign Up  "){
                
            }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
       
            
        
            Text(" Have  an  account")
                .font(.title3)
            NavigationLink(destination:LoginScreen(userName: "") ,isActive:$isLoginScreen ){
            Button("  Log in    "){
                isLoginScreen.toggle()
            }.tint(Color.white).padding(.bottom).foregroundColor(.black).buttonStyle(.borderedProminent)
            }
            Spacer()
           
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
