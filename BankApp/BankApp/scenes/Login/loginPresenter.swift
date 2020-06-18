//
//  loginPresenter.swift
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

protocol LoginPresentationLogic
{
  func presentLastUser(user: UserRealm)
  func presentError(error: AFError)
  func presentSomething(response: Login.Response)
}

class LoginPresenter: LoginPresentationLogic
{
   
   
  weak var viewController: LoginDisplay?
  
  // MARK: Do something
  
    func presentLastUser(user: UserRealm) {
        
    }


    func presentError(error: AFError) {
      
    }
          
    
    
    
    func presentSomething(response: Login.Response){
        let viewModel = Login.ViewModel()
        viewController?.displayHome(viewModel: viewModel)
    }
}
