//
//  DriverRegistration4.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct DriverRegistration4: View {
    var body: some View {
        NavigationView{
         
            VStack(spacing: 50){
                
                StarsView(rating: 3)
                Text("Take a photo of your national identity card")
                    .padding(.bottom, 50.0)
                Spacer()
                
                   VStack{
                     Button(action:{
                         
                     }){
                         Image("Upload")
                             .resizable()
                             .aspectRatio(contentMode: .fit)
                             .frame(width: 18, height: 18)
                             .foregroundColor(.black)
                             .padding(.trailing, 8)
                         Text("Upload")
                             .font(.callout)
                     }.tint(Color.gray.opacity(0.2)).padding().foregroundColor(.black).buttonStyle(.borderedProminent)
                                         
                                     }.frame(width: UIScreen.main.bounds.width - 80, height: 150.0).overlay(
                                         RoundedRectangle(cornerRadius: 16)
                                             .stroke(.black, lineWidth: 1))
                 
                
                HStack{
                    Button(action:{
                        
                    }){
                        Text("Re_uplaod")
                            .font(.callout)
                    }.tint(Color.gray.opacity(0.2)).padding().foregroundColor(.black).buttonStyle(.borderedProminent)
                    Button(action:{
                        
                    }){
                        Text("Submit     ")
                            .font(.callout)
                    }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                    
                }
                
            }.frame(height: 10.0).navigationTitle(Text("Driver Registration ")
                                                    .font(.footnote))
        }
    }
}

struct DriverRegistration4_Previews: PreviewProvider {
    static var previews: some View {
        DriverRegistration4()
    }
}
