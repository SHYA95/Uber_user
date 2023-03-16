//
//  DriverRegistration.swift
//  UperDriver
//
//  Created by Fady Gamil on 27/02/2023.
//

import SwiftUI

struct DriverRegistration: View {
    @State var userName : String = "";
    @State var value = ""
    var placeholder1 = " Type of vehicle.....     "
    var placeholder2 = "Model .........               "
    var placeholder3 = "yeat"
    var placeholder4 = "color"
    var placeholder5 = "Licence number....     "
    var dropDownList = ["item1", "item2", "item3", "item4"]
    var body: some View {
        NavigationView{
        VStack{
//            HStack{
//                Image("Go Back")
//                Text("Driver Registration ")
//            }
            
            Text("Add your vehicle your vehicle  must be 2005 ").font(.callout).multilineTextAlignment(.leading).lineLimit(2)
            Text(" or newer").font(.callout).multilineTextAlignment(.leading).lineLimit(2)
            HStack{
                Text("Type of vehicle").padding([.top, .leading], 20.0)
                Spacer()
            }
            ////dropDownbutton
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
                            
                            Text(value.isEmpty ? placeholder1 : value)
                                .foregroundColor(value.isEmpty ? .gray : .black)
                            
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.black)
                                .font(Font.system(size: 20))
                        }
                        .padding(.horizontal)

                    }
                }
            } .frame(height: 15.0)
            .padding(.all).overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.black, lineWidth: 1)
            )
            HStack{
                Text("Model").padding([.leading], 20.0)
                Spacer()
            }
            ////dropDownbutton
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
                            
                            Text(value.isEmpty ? placeholder2 : value)
                                .foregroundColor(value.isEmpty ? .gray : .black)
                            
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.black)
                                .font(Font.system(size: 20))
                        }
                        .padding(.horizontal)

                    }
                }
            }.frame(height: 15.0)
            .padding(.all).overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.black, lineWidth: 1)
            )
            
            HStack{
                VStack{
                   
                    Text("Year").padding(.trailing, 90.0)
                    ////dropDownbutton
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
                                    
                                    Text(value.isEmpty ? placeholder3 : value)
                                        .foregroundColor(value.isEmpty ? .gray : .black)
                                    
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.black)
                                        .font(Font.system(size: 20 ))
                                }
                                .padding(.horizontal)

                            }
                        }
                    }.frame(height: 15.0)
                    .padding(.all).overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.black, lineWidth: 1)
                    )
                    
                }.padding([.top, .leading])
                VStack{
                   
                    Text("Color").padding(.trailing, 90.0)
                    ////dropDownbutton
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
                                    
                                    Text(value.isEmpty ? placeholder4 : value)
                                        .foregroundColor(value.isEmpty ? .gray : .black)
                                    
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.black)
                                        .font(Font.system(size: 20))
                                }
                                .padding(.horizontal)

                            }
                        }
                    }.frame(height: 15.0)
                    .padding(.all).overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.black, lineWidth: 1)
                    )
                   
                }.padding([.top, .trailing])
            }
            HStack{
                Text("Licence number").padding()
                Spacer()
            }
            ////dropDownbutton
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
                            
                            Text(value.isEmpty ? placeholder5 : value)
                                .foregroundColor(value.isEmpty ? .gray : .black)
                            
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.black)
                                .font(Font.system(size: 20))
                        }
                        .padding(.horizontal)

                    }
                }
            }.frame(height: 15.0)
            .padding(.all).overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.black, lineWidth: 1)
            )
           
            Button("   Continue              "){
               
            }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
           
        }.frame(height: 10.0).navigationTitle(Text("Driver Registration ")
                            .font(.footnote))
        }
    }
}

struct DriverRegistration_Previews: PreviewProvider {
    static var previews: some View {
        DriverRegistration()
    }
}
