//
//  ReviewScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct ReviewScreen: View {
    var body: some View {
        NavigationView{

            ScrollView{
                CustomReview(Name: "Ahmed ali", age: "35   YER", degree: "Respect", image: "Ellipse 8-2", rating: 2)
                CustomReview(Name: "Ahmed ali", age: "35   YER", degree: "Respect", image: "Ellipse 8-2", rating: 2)
                CustomReview(Name: "Ahmed ali", age: "35   YER", degree: "Respect", image: "Ellipse 8-2", rating: 2)
                CustomReview(Name: "Ahmed ali", age: "35   YER", degree: "Respect", image: "Ellipse 8-2", rating: 2)
                CustomReview(Name: "Ahmed ali", age: "35   YER", degree: "Respect", image: "Ellipse 8-2", rating: 2)
            }
        }
    }
}

struct ReviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        ReviewScreen()
    }
}
