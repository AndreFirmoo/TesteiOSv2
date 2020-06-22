//
//  API.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright © 2020 Andre Jardim Firmo. All rights reserved.
//

import Foundation
import Alamofire

struct LoginParams:Encodable{
    let user: String
    let password: String
}
    
enum API:URLRequestConvertible{
    case login(username:String,passwd:String)
    case home(userId: String)
    
    
    private var path: String {
        switch self {
        case .login:return "login"
        case .home(let userId): return "statements/\(userId)"
            
        }
    }
    private var method: HTTPMethod {
           switch self {
           case .login: return .post
           case .home: return .get
           }
       }
    
    
    func asURLRequest() throws -> URLRequest {
        let baseUrlString = "https://bank-app-test.herokuapp.com/api/"
        let url = try baseUrlString.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        urlRequest.httpMethod = method.rawValue
        
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        
        switch self {
        case .login(let user, let passwd):
            let params : LoginParams = LoginParams(user: user, password: passwd)
            urlRequest = try URLEncodedFormParameterEncoder.default.encode(params,into: urlRequest)
        case .home : break
        }
        return urlRequest
    }
}

