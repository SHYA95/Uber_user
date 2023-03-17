//
//  signUpScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 27/02/2023.
//

import SwiftUI

struct SignUpScreen: View {
    @State var isLoginScreen: Bool = false
    @State var number = ""
    @State var firstName = ""
    @State var lastName = ""
    @State var userName = ""
    @State var mail = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            CustomNavBarView(navBarTitle: " ")
            
            Image("Group 3")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.white)
                .padding(.top, 40)
            Text("Create an account")
                .font(.footnote)
                .padding(.bottom, 50.0)
            //           // Spacer()
            //                .frame(height: 10.0)
            VStack {
                HStack{
                    Spacer(minLength: 5)
                    HStack (alignment: .center,
                            spacing: 10) {
                        Image(systemName: "person.circle")
                            .resizable().foregroundColor(.secondary)
                            .frame(width: 18, height: 27, alignment: .center)
                            .foregroundColor(.black)
                        
                            .frame(minWidth: 0, maxWidth: 30)
                            .frame(minHeight: 0, maxHeight: 33)
                        
                        TextField ("User Name", text: $userName).keyboardType(.numberPad)
                    }  // HSTack
                            .padding([.top,.bottom], 10)
                            .padding(.leading, 5)
                            .background(Color.white, alignment: .center)
                            .cornerRadius(5)
                    Spacer(minLength: 20)
                }.frame(height:50.0).overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 0.0)
                ).padding(.all,5).shadow(color: .gray.opacity(0.5), radius: 10)
                HStack{
                    Spacer(minLength: 5)
                    HStack (alignment: .center,
                            spacing: 10) {
                        Image(systemName: "person")
                            .resizable().foregroundColor(.secondary)
                            .frame(width: 18, height: 27, alignment: .center)
                            .foregroundColor(.black)
                        
                            .frame(minWidth: 0, maxWidth: 30)
                            .frame(minHeight: 0, maxHeight: 33)
                        
                        TextField ("First Name", text: $firstName).keyboardType(.numberPad)
                    }  // HSTack
                            .padding([.top,.bottom], 10)
                            .padding(.leading, 5)
                            .background(Color.white, alignment: .center)
                            .cornerRadius(5)
                    Spacer(minLength: 20)
                }.frame(height:50.0).overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 0.0)
                ).padding(.all,5).shadow(color: .gray.opacity(0.5), radius: 10)
                
                HStack{
                    Spacer(minLength: 5)
                    HStack (alignment: .center,
                            spacing: 10) {
                        Image(systemName: "person")
                            .resizable().foregroundColor(.secondary)
                            .frame(width: 18, height: 27, alignment: .center)
                            .foregroundColor(.black)
                        
                            .frame(minWidth: 0, maxWidth: 30)
                            .frame(minHeight: 0, maxHeight: 33)
                        
                        TextField ("Last Name", text: $lastName).keyboardType(.numberPad)
                    }  // HSTack
                            .padding([.top,.bottom], 10)
                            .padding(.leading, 5)
                            .background(Color.white, alignment: .center)
                            .cornerRadius(5)
                    Spacer(minLength: 20)
                }.frame(height:50.0).overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 0.0)
                ).padding(.all,5).shadow(color: .gray.opacity(0.5), radius: 10)
                HStack{
                    Spacer(minLength: 5)
                    HStack (alignment: .center,
                            spacing: 10) {
                        Image(systemName: "envelope")
                            .resizable().foregroundColor(.secondary)
                            .frame(width: 18, height: 27, alignment: .center)
                            .foregroundColor(.black)
                        
                            .frame(minWidth: 0, maxWidth: 30)
                            .frame(minHeight: 0, maxHeight: 33)
                        
                        TextField ("Enter your E-Mail", text: $mail).keyboardType(.numberPad)
                    }  // HSTack
                            .padding([.top,.bottom], 10)
                            .padding(.leading, 5)
                            .background(Color.white, alignment: .center)
                            .cornerRadius(5)
                    Spacer(minLength: 20)
                }.frame(height:50.0).overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 0.0)
                ).padding(.all,5).shadow(color: .gray.opacity(0.5), radius: 10)
                
                
                
                HStack{
                    Spacer(minLength: 5)
                    HStack (alignment: .center,
                            spacing: 10) {
                        Image(systemName: "iphone")
                            .resizable().foregroundColor(.secondary)
                            .frame(width: 18, height: 27, alignment: .center)
                            .foregroundColor(.black)
                        
                            .frame(minWidth: 0, maxWidth: 30)
                            .frame(minHeight: 0, maxHeight: 33)
                        
                        TextField ("Enter your Number", text: $number).keyboardType(.numberPad)
                    }  // HSTack
                            .padding([.top,.bottom], 10)
                            .padding(.leading, 5)
                            .background(Color.white, alignment: .center)
                            .cornerRadius(5)
                    Spacer(minLength: 20)
                }.frame(height:50.0).overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 0.0)
                ).padding(.all,5).shadow(color: .gray.opacity(0.5), radius: 10)
            }
            
            
            //sign up button
            
            Button("  Sign Up  "){
                
            }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
            
            Text(" Have  an  account")
                .font(.title3)
            NavigationLink(destination:LoginScreen(userName: "") ,isActive:$isLoginScreen ){
                Button(action: {
                    // Handle login action
                }) {
                    Text("Login")
                    
                        .font(.system(size: 16, weight: .bold))
                    
                    
                        .foregroundColor(.black)
                }
            }
            
            Spacer() // Add additional spacer to fill the remaining space
            
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
