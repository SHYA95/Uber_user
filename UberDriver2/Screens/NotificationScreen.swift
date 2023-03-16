//
//  NotificationScreen.swift
//  UperDriver
//
//  Created by Fady Gamil on 28/02/2023.
//

import SwiftUI

struct NotificationScreen: View {
    var body: some View {
        NavigationView{
//
            
            ScrollView{
                CustomNotification(image: "Ok", title: "System", Note: "Booking #1138 has been successful")
                CustomNotification(image: "Cancel", title: "System", Note: "Booking #1138 has been successful")
                CustomNotification(image: "Ok", title: "System", Note: "Booking #1138 has been successful")
                CustomNotification(image: "Cancel", title: "System", Note: "Booking #1138 has been successful")
                CustomNotification(image: "Cancel", title: "System", Note: "Booking #1138 has been successful")
                CustomNotification(image: "Cancel", title: "System", Note: "Booking #1138 has been successful")
            }
        }
    }
}

struct NotificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationScreen()
    }
}
