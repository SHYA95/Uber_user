////
//  
//  
//
//import SwiftUI
//
//struct SwiftUIView: View {
//    var body: some View {
//        VStack{
//            //Start>>
//            NavigationLink(destination:EditProfile() ,isActive: $backActive1){
//                Button(action: {
//                    backActive1  = true
//
//                }) {
//                    HStack{
//                        Image(systemName: "pencil").resizable().frame(width: 20.0, height: 25.0)
//                        Text("Edit my profile")
//                            .foregroundColor(Color.black)
//                            .padding(.leading)
//                        Spacer()
//
//                    }
//                    .padding(.all)
//
//                }}.accentColor(.black
//                )//end<<
//
//            //Start>>
//            NavigationLink(destination:MyWalletScreen() ,isActive: $WalletActive){
//                Button(action: {
//                    WalletActive  = true
//
//                }) {
//                    HStack{
//                        Image(systemName: "rectangle.trailingthird.inset.filled").resizable().frame(width: 20.0, height: 25.0)
//                        Text("My wallet")
//                            .foregroundColor(Color.black)
//                            .padding(.leading)
//                        Spacer()
//
//                    }
//                    .padding(.all)
//
//                }}.accentColor(.black
//                )//end<<
//
//            //Start>>
//            NavigationLink(destination:SettingsScreen() ,isActive: $SettingActive){
//                Button(action: {
//                    SettingActive  = true
//
//                }) {
//                    HStack{
//                        Image(systemName: "gearshape.fill").resizable().frame(width: 20.0, height: 25.0)
//                        Text("Settings")
//                            .foregroundColor(Color.black)
//                            .padding(.leading)
//                        Spacer()
//
//                    }
//                    .padding(.all)
//
//                }}.accentColor(.black
//                )//end<<
//
//            //Start>>
//            NavigationLink(destination:SafetyList() ,isActive: $SafetyActive){
//                Button(action: {
//                    SafetyActive  = true
//
//                }) {
//                    HStack{
//                        Image(systemName: "list.bullet.rectangle").resizable().frame(width: 20.0, height: 25.0)
//                        Text("Safety List")
//                            .foregroundColor(Color.black)
//                            .padding(.leading)
//                        Spacer()
//
//                    }
//                    .padding(.all)
//
//                }}.accentColor(.black
//                )//end<<
//            //Start>>
//            NavigationLink(destination:HomeScreen() ,isActive: $TermsActive){
//                Button(action: {
//                    TermsActive  = false
//
//                }) {
//                    HStack{
//                        Image(systemName: "heart.text.square").resizable().frame(width: 20.0, height: 25.0)
//                        Text("Terms and Conditions")
//                            .foregroundColor(Color.black)
//                            .padding(.leading)
//                        Spacer()
//
//                    }
//                    .padding(.all)
//
//                }}.accentColor(.black
//                )//end<<
//            //Start>>
//            NavigationLink(destination:AboutUsScreen() ,isActive: $AboutActive){
//                Button(action: {
//                    AboutActive  = true
//
//                }) {
//                    HStack{
//                        Image(systemName: "info.circle").resizable().frame(width: 20.0, height: 20.0)
//                        Text("About")
//                            .foregroundColor(Color.black)
//                            .padding(.leading)
//                        Spacer()
//
//                    }
//                    .padding(.all)
//
//                }}.accentColor(.black
//                )//end<<
//            Spacer()
//        }
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView()
//    }
//}
