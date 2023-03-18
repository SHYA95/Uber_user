//
//  DriverRegistration2.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct DriverRegistration2: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 70){
                StarsView(rating: 1)
                
                Text("Take a photo of your driver’s licence")
                   
                Spacer()
                
                VStack{
                    Button(action:{
                        
                    }){
                        Image(systemName: "arrow.up.to.line.compact")
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
                    }.tint(Color.gray.opacity(0.2)).padding().foregroundColor(.black).buttonStyle(.borderedProminent) .font(.system(size: 16, weight: .bold))
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

struct DriverRegistration2_Previews: PreviewProvider {
    static var previews: some View {
        DriverRegistration2()
    }
}
