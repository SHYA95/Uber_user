//
//  CustomReview.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct CustomReview: View {
    @State var Name : String;
    @State var age : String;
    @State var degree : String;
    @State var image: String;
    @State var rating : Int;
    var body: some View {
        VStack{
        HStack{
            Image("Ellipse 8-2").padding(.leading, 90.0).frame(width: 50, height: 50)
           
            VStack{
                Text(Name)
                Text(age)
                HStack{
                    RatingStar(rating:Float(rating))
                    Text(String(rating))
                }
                .padding(.leading, 50.0)
                Text(degree)
            }
            .padding(.leading, 30.0)
            Spacer()
        }
            Divider()
    }
    }
}

struct CustomReview_Previews: PreviewProvider {
    static var previews: some View {
        CustomReview(Name: "", age: "", degree: "", image: "", rating: 0)
    }
}
