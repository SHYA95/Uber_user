//
//  CustomTrip.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct CustomTrip: View {
    var body: some View {
        VStack{
            HStack{
                Image("Rectangle").frame(width: 40, height: 50).padding(.leading, 10.0)
                Text("Ahmed Ali")
                Spacer()
                VStack{
                    Text("YER 24.00")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        
                    
                        
                    
                }.frame(width: UIScreen.main.bounds.width - 270, height: 30.0).overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.black, lineWidth: 1)).padding(.trailing)
                
            }
            HStack{
            // Circle Icons
            VStack{
                Circle()
                    .fill(Color(.systemGray3))
                    .frame(width: 6, height: 6)
                
                Rectangle()
                    .fill(Color(.systemGray3))
                    .frame(width: 1, height: 10)
                
                Rectangle()
                    .fill(.black)
                    .frame(width: 6, height: 6)
            }
                VStack{
                    Text("Pick up Street 7, Taizz")
                        .font(.footnote).padding(.trailing, 50.0)
                    Text("Drop off Street the bank, Taizz")
                        .font(.footnote).padding(.top, 1.0)
                        
                }
                Spacer()
                Text("2.4 KM").font(.footnote).padding()
            }.padding(.horizontal)
            Text("22-2   2.30 pm").padding(.trailing, 200.0)
             .font(.footnote)
        Divider()
        }
    }
}

struct CustomTrip_Previews: PreviewProvider {
    static var previews: some View {
        CustomTrip()
    }
}
