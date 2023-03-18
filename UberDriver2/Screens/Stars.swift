//
//  Stars.swift
//  UberDriver2
//
//  Created by Shrouk Yasser on 16/03/2023.
//

import SwiftUI

struct StarsView: View {
 private static let MAX_RATING: Float = 5 // Defines upper limit of the rating
 private static let COLOR = Color.green // The color of the stars
 let rating: Float
 private let fullCount: Int
 private let emptyCount: Int

 init(rating: Float) {
   self.rating = rating
   fullCount = Int(rating)
   emptyCount = Int(StarsView.MAX_RATING - rating)
 }
   
 var body: some View {

    HStack(spacing: 0) {
     ForEach(0..<fullCount) { index in
        self.fullStar
        if (!isLast) && (fullCount > index ){
        Rectangle().fill(Color.blue).frame(width: 35, height: 1, alignment: .center).padding(.leading, 0)
    }
     }
     
        ForEach(0..<emptyCount) { indexr in
        self.emptyStar
            if (!isLast) && (indexr < (emptyCount-1)){
        Rectangle().fill(Color.blue).frame(width: 35, height: 1, alignment: .center).padding(.leading, 0)
    }
      }
    }

 }
    var isLast: Bool = false
 private var fullStar: some View {
    HStack(spacing: 0){
    Image(systemName: "checkmark.circle")
    .resizable()
    .frame(width: 24, height: 24)
        .foregroundColor(Color.white)
        .padding(0)
    .background(StarsView.COLOR)
    .clipShape(Circle())
    
    }
 }

    private var emptyStar: some View {
    //    Image(systemName: "circle").foregroundColor(StarsView.COLOR).frame(width: 8.0, height: 8.0)
        HStack(spacing: 0){
        Image(systemName: "circle")
        .resizable()
        .frame(width:20, height: 20)
        .padding(0)
            .background(Color.white)
        .background(Color.white)
        .clipShape(Circle())
          
        }
     }
    }
struct StarsView_Previews: PreviewProvider {
    static var previews: some View {
        StarsView(rating:0.5 )
    }
}


