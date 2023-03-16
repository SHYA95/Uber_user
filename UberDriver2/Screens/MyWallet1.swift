//
//  MyWallet1.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct MyWallet1: View {
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("My Balance")
                        .font(.body)
                        .fontWeight(.semibold).padding()
                    Text("YER 1220")
                        .font(.body)
                        .fontWeight(.semibold)
                    
                }.frame(width: UIScreen.main.bounds.width - 160, height: 130.0).overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.black, lineWidth: 1))
                HStack{
                    Button(action:{
                        
                    }){
                        Text("Cash Out ")
                            .font(.callout)
                    }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                    Button(action:{
                        
                    }){
                        Text("Details     ")
                            .font(.callout)
                    }.tint(Color.gray.opacity(0.2)).padding().foregroundColor(.black).buttonStyle(.borderedProminent)
                }
                
                HStack{
                    Text("All Transactions                                 Sat 25 Feb.")
                        .fontWeight(.semibold)
                }
                HStack{
                    Image("Vector-8")
                    Text("All Transactions                                 Sat 25 Feb.")
                }
                HStack{
                    Image("Vector-8")
                    Text("All Transactions                                 Sat 25 Feb.")
                }
                HStack{
                    Image("Circled Up Right-1")
                    Text("All Transactions                                 Sat 25 Feb.")
                }
                HStack{
                    Image("Vector-8")
                    Text("All Transactions                                 Sat 25 Feb.")
                }
                Spacer()
            }
        }
    }
}

struct MyWallet1_Previews: PreviewProvider {
    static var previews: some View {
        MyWallet1()
    }
}
