//
//  WelcomeScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 27/02/2023.
//

import SwiftUI

struct WelcomeScreen: View {
    @State var isSignUpScreen: Bool = false
    @State var isLoginScreen: Bool = false
    var body: some View {
        NavigationView{
        VStack{
            Image("uperLogo")
            Text("Drive with pride ")
            //Spacer()
            NavigationLink(destination:SignUpScreen(),isActive:$isSignUpScreen ){
            Button(action:{
                isSignUpScreen.toggle()
            }){
                Text("Create an account")
            }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
            }
            Text("Have an account?")
            NavigationLink(destination:LoginScreen(userName: "") ,isActive:$isLoginScreen ){
            Button(action:{
                isLoginScreen.toggle()
            }){
                Text("Login")
                    .font(.title)
            }.tint(Color.white).padding().foregroundColor(.black).buttonStyle(.borderedProminent)
            }
            }.navigationBarHidden(true)
        }.navigationBarHidden(true)
    }
    }


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
