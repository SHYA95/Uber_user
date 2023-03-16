//
//  MenuScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct MenuScreen: View {
    @State var backActive1 = false
    @State var WalletActive = false
    @State var SettingActive = false
    @State var AboutActive = false
    @State var TermsActive = false
    @State var SafetyActive = false
   
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Image("Rectangle").frame(width: 40, height: 50).padding(.leading, 10.0)
                    VStack{
                    Text("Ahmed Ali")
                        RatingStar(rating: 2.2)
                    }
                    Text("(4.0)")
                    Spacer()
                }.padding()
                
                HStack{
                    VStack{
                        Image("Future")
                        Text("10")
                        Text("Total hours")
                    }
                    VStack{
                        Image("Ookla Speedtest")
                        Text("20 Km")
                        Text("Total distance")
                    }
                    VStack{
                        Image("Bill")
                        Text("20 ")
                        Text("Total trips")
                    }
                }
                Divider()
                NavigationLink(destination:LoginScreen(userName: "") ,isActive: $backActive1){
                    Button(action: {
                        backActive1  = true

                    }) {
                        HStack{
                            Image(systemName: "pencil").resizable().frame(width: 20.0, height: 25.0)
                            Text("Edit my profile")
                                .foregroundColor(Color.black)
                                .padding(.leading)
                            Spacer()

                        }
                        .padding(.all)

                    }}.accentColor(.black
                    )//end<<

                //Start>>
                NavigationLink(destination:LoginScreen(userName: "") ,isActive: $WalletActive){
                    Button(action: {
                        WalletActive  = true

                    }) {
                        HStack{
                            Image(systemName: "rectangle.trailingthird.inset.filled").resizable().frame(width: 20.0, height: 25.0)
                            Text("My wallet")
                                .foregroundColor(Color.black)
                                .padding(.leading)
                            Spacer()

                        }
                        .padding(.all)

                    }}.accentColor(.black
                    )//end<<

                //Start>>
                NavigationLink(destination:LoginScreen(userName: "") ,isActive: $SettingActive){
                    Button(action: {
                        SettingActive  = true

                    }) {
                        HStack{
                            Image(systemName: "gearshape.fill").resizable().frame(width: 20.0, height: 25.0)
                            Text("Settings")
                                .foregroundColor(Color.black)
                                .padding(.leading)
                            Spacer()

                        }
                        .padding(.all)

                    }}.accentColor(.black
                    )//end<<
               
                //Start>>
                NavigationLink(destination:WelcomeScreen(),isActive: $SafetyActive){
                    Button(action: {
                        SafetyActive  = true

                    }) {
                        HStack{
                            Image(systemName: "list.bullet.rectangle").resizable().frame(width: 20.0, height: 25.0)
                            Text("Safety List")
                                .foregroundColor(Color.black)
                                .padding(.leading)
                            Spacer()

                        }
                        .padding(.all)

                    }}.accentColor(.black
                    )//end<<
                //Start>>
                NavigationLink(destination:LoginScreen(userName: "") ,isActive: $TermsActive){
                    Button(action: {
                        TermsActive  = false

                    }) {
                        HStack{
                            Image(systemName: "heart.text.square").resizable().frame(width: 20.0, height: 25.0)
                            Text("Terms and Conditions")
                                .foregroundColor(Color.black)
                                .padding(.leading)
                            Spacer()

                        }
                        .padding(.all)

                    }}.accentColor(.black
                    )//end<<
                //Start>>
                NavigationLink(destination:LoginScreen(userName: "") ,isActive: $AboutActive){
                    Button(action: {
                        AboutActive  = true

                    }) {
                        HStack{
                            Image(systemName: "info.circle").resizable().frame(width: 20.0, height: 20.0)
                            Text("About")
                                .foregroundColor(Color.black)
                                .padding(.leading)
                            Spacer()

                        }
                        .padding(.all)

                    }}.accentColor(.black
                    )//end<<
                Spacer()
                }.navigationBarHidden(true)
           
        }
    }
}

struct MenuScreen_Previews: PreviewProvider {
    static var previews: some View {
        MenuScreen()
    }
}
