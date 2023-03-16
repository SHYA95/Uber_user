//
//  SuccessfulScreen2.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct SuccessfulScreen2: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Circle()
                        .frame(width: 190, height: 190, alignment: .center)
                    Circle().fill(Color.white)
                        .frame(width: 187, height: 187, alignment: .center)
                    Image("Vector")
                    
                        
                }.padding()
                
                Text("YER 1200 ").padding()
                Text("Cashed out successfully ")
                Spacer()
                
                Button(action:{
                    
                }){
                    Text("Done    ")
                        .font(.body)
                }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                Spacer()
            }
        }
    }
}

struct SuccessfulScreen2_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulScreen2()
    }
}
