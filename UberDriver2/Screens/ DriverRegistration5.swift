//
//   DriverRegistration5.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct DriverRegistration5: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Take a photo of your vehicle ")
                    .padding(.bottom, 50.0)
                Spacer()
                
                VStack{
                    Button(action:{
                        
                    }){
                        Text("uplaod")
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

struct DriverRegistration5_Previews: PreviewProvider {
    static var previews: some View {
        DriverRegistration5()
    }
}
