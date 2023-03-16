//
//  CustomNotification.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct CustomNotification: View {
    @State var image: String;
    @State var title: String;
    @State var Note: String;
    var body: some View {
        VStack{
            HStack{
                Image(image).padding()
                VStack{
                    HStack{
                        Text(title)
                            .fontWeight(.semibold)
                        Spacer()
                    }.padding(.leading)
                    Text(Note)
                        .font(.callout)
                }
            }
            Divider()
        }
    }
}

struct CustomNotification_Previews: PreviewProvider {
    static var previews: some View {
        CustomNotification(image: "", title: "", Note: "")
    }
}
