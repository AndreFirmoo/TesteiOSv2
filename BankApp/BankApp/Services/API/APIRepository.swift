//
//  APIRepository.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright © 2020 Andre Jardim Firmo. All rights reserved.
//

import Alamofire
import UIKit
import Foundation

class APIRepository{
    @discardableResult
    func createRequest<T:Decodable>(route: API, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T, AFError>)->Void) -> DataRequest {
        return AF.request(route)
            .responseDecodable (decoder: decoder) { (response: DataResponse<T,AFError>) in
                completion(response.result)
        }
    }
}

