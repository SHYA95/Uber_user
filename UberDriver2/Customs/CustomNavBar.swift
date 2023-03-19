//
//  CustomNavBar.swift
//  UberDriver2
//
//  Created by Shrouk Yasser on 16/03/2023.
//

import SwiftUI

struct CustomNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    let navBarTitle: String
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Handle button tap action here
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "arrow.left.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .foregroundColor(.black)
                }
                Spacer()
                Text(navBarTitle)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .padding(.top, 10)
                Spacer()
            }
            .padding(.horizontal)
            .frame(height: 44)
            .background(Color.clear) // Set background color to transparent
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
            

            
        }
    }
}


struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarView(navBarTitle: "")
    }
}
