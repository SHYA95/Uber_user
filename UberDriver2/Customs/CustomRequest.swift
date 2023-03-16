//
//  CustomRequest.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct CustomRequest: View {
    @State var counter = 1;
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
                        .stroke(.black, lineWidth: 1))
                
                VStack{
                    
                        Button(action: {
                            if(counter>1){
                                counter-=1
                            }
                            
                            
                        }){
                            Text("+").frame(width:15,height:15).foregroundColor(.white).background(Color.black).clipShape(Circle())
                        }
                        
                        
                        Button(action: {
                            //counter+=1
                        }){
                            Text("-").frame(width:15,height:15).foregroundColor(.white).background(Color.black).clipShape(Circle())
                        }
                        
                        
                   
                }.padding(.trailing)
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
            HStack{
                Button(action:{
                    
                }){
                    Text("Decline")
                        .font(.callout)
                }.tint(Color.gray.opacity(0.2)).padding().foregroundColor(.black).buttonStyle(.borderedProminent)
                Button(action:{
                    
                }){
                    Text("Accept")
                        .font(.callout)
                }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
            }
            Divider()
        }
    }
}


struct CustomRequest_Previews: PreviewProvider {
    static var previews: some View {
        CustomRequest()
    }
}
