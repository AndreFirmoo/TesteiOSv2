//
//  HomePresenter.swift
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

protocol HomePresentationLogic
{
  func presentSomething(response: Home.Response)
}

class HomePresenter: HomePresentationLogic
{
  weak var viewController: HomeDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Home.Response)
  {
    let viewModel = Home.ViewModel(response: response)
    viewController?.displaySomething(viewModel: viewModel)
  }
}