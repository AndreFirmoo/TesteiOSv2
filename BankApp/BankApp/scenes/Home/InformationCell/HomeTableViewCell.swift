//
//  HomeTableViewCell.swift
//  BankApp
//
//  Created by Andre Jardim Firmo on 18/06/20.
//  Copyright © 2020 Andre Jardim Firmo. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var itemTypeLabel: UILabel!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    
    func prepare(statement: Statement){
        itemTypeLabel.text = statement.title
        itemTitleLabel.text = statement.desc
        dataLabel.text = statement.date
        priceLabel.text = "\(statement.value)"
    }
}
