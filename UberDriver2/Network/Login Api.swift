//
//  LoginMethod.swift
//  UberVersion0
//
//  Created by apple on 28/02/2023.
//

import SwiftUI
import Alamofire
import Foundation

protocol LoginDataLoaded{
    func isloginDone(userData:LoginData)
    func isloginFail(message:String)
}

class LoginApiHandler{
//    @State  var isProgressing = false
    var delegate:LoginDataLoaded?
    static let instance = LoginApiHandler()
    func LoginMethod(phone:String) {
        let params: Parameters = [
            "phone": phone,
        ]
        let headers : HTTPHeaders = [
            "Authorization": "Basic UIOIKMJOYWRtaW46cGFzc3dvcmQ=",
        ]
        guard let url = URL(string: "http://207.180.239.207:8080/api/auth/signin") else {return}
        AF.request(url, method: .post,parameters: params,encoding: JSONEncoding.default,headers:headers).responseDecodable(of:LoginData.self ) { respone in
            switch respone.result{
            case.success(let user):
                self.delegate?.isloginDone(userData: user)
            case.failure(_):
                let message = "Please try agine"
                self.delegate?.isloginFail(message: message)
            }
        }
    }
}
