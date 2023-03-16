//
//  CustomTextField.swift
//  UperDriver
//
//  Created by Fady Gamil on 27/02/2023.
//


import SwiftUI

struct CustomTextField: View {
    @State var userName : String = "";
    @State var placeHolder: String;
    @State var Icon : String = "";
    @State var Icon2 : String = "";
    var w : CGFloat = 50
    var h : CGFloat = 50

    var body: some View {
        HStack {
            Spacer(minLength: 20)
                HStack (alignment: .center,
                                        spacing: 10) {
                                            Image(Icon)
                                                .resizable()
                                                .frame(width: w, height: h, alignment: .center)
                                                .foregroundColor(.black)
                                                
                                                .frame(minWidth: 0, maxWidth: 30)
                                                .frame(minHeight: 0, maxHeight: 33)
                                            
                                    TextField (placeHolder, text: $userName).keyboardType(.numberPad)
                    Button(action:{}){
                    Image(Icon2)
                        .resizable()
                        .frame(width: w, height: h, alignment: .center)
                        .foregroundColor(.black)
                        .padding(.trailing)
                        .frame(minWidth: 0, maxWidth: 30)
                        .frame(minHeight: 0, maxHeight: 25)}
                                }  // HSTack
                                    .padding([.top,.bottom], 2)
                                    .padding(.leading, 5)
                                    .frame(width: UIScreen.main.bounds.width - 50,height: 50)
                                    .background(Color.gray.opacity(0.2), alignment: .center)
                                    .cornerRadius(20)
                                Spacer(minLength: 20)
           
            
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(userName: "", placeHolder: "" , Icon:"")
    }
}
