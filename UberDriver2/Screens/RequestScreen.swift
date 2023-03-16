//
//  RequestScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 01/03/2023.
//

import SwiftUI

struct RequestScreen: View {
    var body: some View {
        NavigationView{
            ScrollView{
                CustomRequest()
                CustomRequest()
                CustomRequest()
                CustomRequest()
            }
        }
    }
}

struct RequestScreen_Previews: PreviewProvider {
    static var previews: some View {
        RequestScreen()
    }
}
