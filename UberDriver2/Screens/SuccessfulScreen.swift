//
//  SuccessfulScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct SuccessfulScreen: View {
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
                
                Text("Your  application is submittedand is under review").padding()
                Spacer()
                
                Button(action:{
                    
                }){
                    Text("Explore the opp    ")
                        .font(.body)
                }.tint(Color.black).padding().foregroundColor(.white).buttonStyle(.borderedProminent)
                Spacer()
            }
        }
    }
}

struct SuccessfulScreen_Previews: PreviewProvider {
    static var previews: some View {
        SuccessfulScreen()
    }
}
