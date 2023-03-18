//
//  LoginScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 27/02/2023.
//

import SwiftUI

struct LoginScreen: View {
    @State var userName : String;
    var body: some View {
        
        VStack{
            CustomNavBarView(navBarTitle: " ")
            Image("uperLogo")
            Text("Drive with pride")
            Spacer()
            ///
            HStack{
                Text("Enter your Number").padding(.leading, 25.0)
                Spacer()
            }
            CustomTextField(userName: userName, placeHolder: "Enter your Number")
            ///
            Button("Login                     "){
                
            }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                .navigationBarHidden(true)
            
        
            
            Spacer()
                
        }//MARK: VStack
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(userName: "")
    }
}
