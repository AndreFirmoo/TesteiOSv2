//
//  HomeRepository.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright (c) 2020 Andre Jardim Firmo. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Alamofire

protocol HomeRepositoryProtocol {
    func getRequestStatementsList(request: Home.Request, completion: @escaping (Result<StatementList,AFError>)->Void)
}

class HomeRepository: HomeRepositoryProtocol{
    
    static let shared = HomeRepository()
    private lazy var apiRepository: APIRepository = {
        let maneger = APIRepository()
        return maneger
    }()
    
    func getRequestStatementsList(request: Home.Request, completion: @escaping (Result<StatementList, AFError>) -> Void) {
        apiRepository.createRequest(route: API.home(userId: request.userId), completion: completion)
        
    }
    
  
}
