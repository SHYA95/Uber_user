//
//  AddBankAccountScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct AddBankAccountScreen: View {
    @State private var showGreeting = true
    @State var userName : String = "";
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Card Number").padding(.leading)
                    Spacer()
                }
                CustomTextField(placeHolder: "", Icon: "Visa",Icon2:"SLR Camera", w:30, h:30)
                HStack{
                    VStack{
                       
                        Text("Exp.Date")
                            .padding(.trailing, 100.0)
                        HStack{
                        TextField ("MM/YY", text: $userName).keyboardType(.numberPad)
                        .cornerRadius(20)
                            Image("Help")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .padding()
                                .frame(minWidth: 0, maxWidth: 30)
                                .frame(minHeight: 0, maxHeight: 33)
                            Spacer()
                        }.padding([.top,.bottom], 2)
                            .padding(.leading, 5)
                            .frame(width: UIScreen.main.bounds.width - 220,height: 50)
                            .background(Color.gray.opacity(0.2), alignment: .center)
                            .cornerRadius(20)
                        
                    }.padding([.top, .leading])
                    VStack{
                       
                        Text("CVV").padding(.trailing, 100.0)

                        HStack{
                        TextField ("123", text: $userName).keyboardType(.numberPad)
                        .cornerRadius(20)
                            Image("Help")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .padding()
                                .frame(minWidth: 0, maxWidth: 30)
                                .frame(minHeight: 0, maxHeight: 33)
                            Spacer()
                        }.padding([.top,.bottom], 2)
                            .padding(.leading, 5)
                            .frame(width: UIScreen.main.bounds.width - 220,height: 50)
                            .background(Color.gray.opacity(0.2), alignment: .center)
                            .cornerRadius(20)
                       
                    }.padding([.top, .trailing])
                }
                HStack{
                    Text("Nickname (optional)").padding()
                    Spacer()
                }
                CustomTextField(placeHolder: "Nickname...")
                //Spacer()
                Text("Save card for future payments")
                VStack {
                           Toggle("", isOn: $showGreeting)

                           if showGreeting {
                               Text("")
                           }
                }.padding(.trailing, 160.0)
                Text("Your payment is 100% secure")
                Button(action:{
                  
                }){
                    Text("Submit                    ")
                }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                Spacer()
            }
        }
    }
}

struct AddBankAccountScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddBankAccountScreen()
    }
}
