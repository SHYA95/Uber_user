//
//  SingUP Api.swift
//  UberDriver2
//
//  Created by Mohamed Khaled on 18/03/2023.
//
import SwiftUI
import Alamofire
import Foundation

protocol SingUPDataLoaded{
    func isSingUPDone(message:String)
    func isSingUPFail(message:String)
}

class SingUPApiHandler{
//    @State  var isProgressing = false
    var delegate:SingUPDataLoaded?
    static let instance = SingUPApiHandler()
    func RegisterMethod(phone:String,userName:String,email:String,FirstName:String,LastName:String) {
        let params: Parameters = [
            "phone": phone,
            "email":email,
            "username":userName,
            "firstName":FirstName,
            "lastName":LastName
        ]
        let headers : HTTPHeaders = [
                   "Authorization": "Basic UIOIKMJOYWRtaW46cGFzc3dvcmQ="
    ]
        guard let url = URL(string: "http://207.180.239.207:8080/api/auth/signup") else {return}
        AF.request(url, method: .post,parameters: params,encoding: JSONEncoding.default,headers:headers).responseDecodable(of:SingUPModel.self ) { respone in
            switch respone.result{
            case.success(let register):
                self.delegate?.isSingUPDone(message: register.message)
            case.failure(_):
                let message = "Please try agine"
                self.delegate?.isSingUPFail(message: message)
            }
        }
    }
}
