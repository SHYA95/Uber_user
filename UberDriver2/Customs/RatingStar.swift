//
//  RatingStar.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct RatingStar: View {
  private static let MAX_RATING: Float = 4 // Defines upper limit of the rating
  private static let COLOR = Color.orange // The color of the stars

  let rating: Float
  private let fullCount: Int
  private let emptyCount: Int
  private let halfFullCount: Int

  init(rating: Float) {
    self.rating = rating
    fullCount = Int(rating)
    emptyCount = Int(RatingStar.MAX_RATING - rating)
    halfFullCount = (Float(fullCount + emptyCount) < RatingStar.MAX_RATING) ? 1 : 0
  }

  var body: some View {
    HStack {
      ForEach(0..<fullCount) { _ in
         self.fullStar
       }
       ForEach(0..<halfFullCount) { _ in
         self.halfFullStar
       }
       ForEach(0..<emptyCount) { _ in
         self.emptyStar
       }
     }
  }

  private var fullStar: some View {
    Image(systemName: "star.fill").foregroundColor(RatingStar.COLOR)
  }

  private var halfFullStar: some View {
    Image(systemName: "star.lefthalf.fill").foregroundColor(RatingStar.COLOR)
  }

  private var emptyStar: some View {
    Image(systemName: "star").foregroundColor(RatingStar.COLOR)
  }
}


struct RatingStar_Previews: PreviewProvider {
    static var previews: some View {
        RatingStar(rating:2.2)
    }
}
