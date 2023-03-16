//
//  MyWallet2.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct MyWallet2: View {
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
                
                Text("Add the bank account where you want to recieve payouts  "
                ).padding()
                Button(action:{
                    
                }){
                    Text("Add account           ")
                }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                
                HStack{
                    Text("All Transactions "
                    ).fontWeight(.semibold).padding()
                    Spacer()
                }
                Text("You haven’t done any rides "
                     )
                Spacer()
            }
        }
    }
}

struct MyWallet2_Previews: PreviewProvider {
    static var previews: some View {
        MyWallet2()
    }
}
