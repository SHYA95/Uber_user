//
//  CashoutScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct CashoutScreen: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("We owe you")
                Text("YER 1220")
                    .fontWeight(.semibold)
                
                Divider().background(Color.black)
                HStack{
                    Image("Visa").padding()
                    VStack{
                        Text("*******1234 ")
                        Text("Bank of yomen")
                    }
                    Spacer()
                }
                Divider().background(Color.black)
                ScrollView{
                    HStack{
                        Text("Earnings").padding(.leading)
                        Spacer()
                        Text("1200").padding(.trailing)
                    }.padding(.bottom, 5.0)
                    HStack{
                        Text("Earnings").padding(.leading)
                        Spacer()
                        Text("1200").padding(.trailing)
                    }.padding(.bottom, 5.0)
                    HStack{
                        Text("Earnings").padding(.leading)
                        Spacer()
                        Text("1200").padding(.trailing)
                    }.padding(.bottom, 5.0)
                    HStack{
                        Text("Earnings").padding(.leading)
                        Spacer()
                        Text("1200").padding(.trailing)
                    }.padding(.bottom, 5.0)
                
                    Divider().background(Color.black)
                    HStack{
                        Text("Earnings").padding(.leading)
                        Spacer()
                        Text("1200").padding(.trailing)
                    }.padding(.bottom, 5.0)
                }.frame( height:200)
                Button(action:{
                }){
                    Text("Cash out 1200")
                }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                Spacer()
            }
        }
    }
}

struct CashoutScreen_Previews: PreviewProvider {
    static var previews: some View {
        CashoutScreen()
    }
}
