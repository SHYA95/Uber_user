//
//  LoginScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 27/02/2023.
//
import SwiftUI

struct LoginUserData  {
    @AppStorage("fname")  var fname = ""
    @AppStorage("lname")  var lname = ""
    @AppStorage("email")  var email = ""
    @AppStorage("accessToken")  var accessToken = ""
    mutating func ChangeValue(v1 : String ,v2 : String ,v3 : String ,v4 : String ) {  // `mutating`gets rid of your error
        fname = v1
        lname = v2
        email = v3
        accessToken = v4
    }
}
class loginUser: ObservableObject {
    @StateObject var saveData = loginUser()
    @Published var data = LoginUserData()
    
    func getUserData(fname: String,lname: String,email: String,accessToken: String) {
        data.ChangeValue(v1: fname, v2: lname, v3: email, v4: accessToken)
    }
}
struct LoginScreen: View,LoginDataLoaded {
    @StateObject var saveData = loginUser()
    func isloginFail(message: String) {
        print(message)
        
    }
    
    func isloginDone(userData: LoginData) {
        saveData.getUserData(fname: userData.first, lname: userData.last, email: userData.email, accessToken: userData.accessToken)
        print("Name\(userData.first)")
        print(userData.accessToken)
        print(userData.email)
    }
    
    
    @State var userName : String;
    var api = LoginApiHandler()
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
                api.delegate = self
                api.LoginMethod(phone: userName)
            }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                .navigationBarHidden(true)
            
        
            
            Spacer()
                
        }.task {
            api.delegate = self
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(userName: "")
    }
}
