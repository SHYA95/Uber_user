//
//  ProfileScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                Image("Rectangle 41975-2").frame(width: 60, height: 60, alignment: .center).padding(.bottom, 40.0)
                    Button(action:{
                        
                    }){
                        Image("SLR Camera").padding([.top, .trailing], 60.0)
                           
                    }
                }
                Text("Mahmoud Ahmed ")
                RatingStar(rating:2.2).padding()
                
                HStack{
                    Text("Information").font(.title).fontWeight(.semibold).padding()
                    Spacer()
                }
                
                HStack{
                    Text("User name").padding()
                    Spacer()
                    Image("Vector-7").padding()
                }
                HStack{
                    Text("Phone number ").padding()
                    Spacer()
                    Image("Vector-7").padding()
                }
                HStack{
                    Text("Email ").padding()
                    Spacer()
                    Image("Vector-7").padding()
                }
                Spacer()
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
