//
//  MyTripsScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct MyTripsScreen: View {
    @State var value = ""
    var placeholder = "Days"
    var dropDownList = ["item1", "item2", "item3"]
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    VStack{
                        Menu {
                            ForEach(dropDownList, id: \.self){ client in
                                Button(client) {
                                    self.value = client
                                }
                            }
                        }label: {
                            VStack(spacing: 5){
                                HStack{
                                    
                                    Text(value.isEmpty ? placeholder : value)
                                        .foregroundColor(value.isEmpty ? .gray : .black)
                                    
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.black)
                                        .font(Font.system(size: 20))
                                }
                                .padding(.horizontal)

                            }
                        }
                    } .frame(width: UIScreen.main.bounds.width - 270, height:6.0)
                    .padding(.all).overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.black, lineWidth: 1)
                    ).padding()
                   
                }
                
               
                    ScrollView(.horizontal){
                        HStack{
                    VStack{
                        Text("Wed")
                            
                        Text("22")
                            
                        
                    }.frame(width: UIScreen.main.bounds.width - 260, height: 80.0).overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.black, lineWidth: 1))
                        VStack{
                            Text("Wed")
                                
                            Text("22")
                                
                            
                        }.frame(width: UIScreen.main.bounds.width - 260, height: 80.0).overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.black, lineWidth: 1))
                            VStack{
                                Text("Wed")
                                    
                                Text("22")
                                    
                                
                            }.frame(width: UIScreen.main.bounds.width - 260, height: 80.0).overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black, lineWidth: 1))
                            VStack{
                                Text("Wed")
                                    
                                Text("22")
                                    
                                
                            }.frame(width: UIScreen.main.bounds.width - 260, height: 80.0).overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black, lineWidth: 1))
                    }
                    }
                Divider()
                HStack{
                    VStack{
                        Text("Total trips")
                            
                        Text("10")
                            
                        
                    }.frame(width: UIScreen.main.bounds.width - 230, height: 50.0).overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.black, lineWidth: 1)).padding()
                    VStack{
                        Text("Earned ")
                            
                        Text("YER 325.00")
                            
                        
                    }.frame(width: UIScreen.main.bounds.width - 230, height: 50.0).overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.black, lineWidth: 1)).padding()
                }
                ScrollView{
                    CustomTrip()
                    CustomTrip()
                }
            }
            }
        }
    }


struct MyTripsScreen_Previews: PreviewProvider {
    static var previews: some View {
        MyTripsScreen()
    }
}
