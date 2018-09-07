//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Ernesto Mejia on 07/09/18.
//  Copyright © 2018 Ernesto Daniel Mejia Valdiviezo. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    var delegate: ToDoCellDelegate?
    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
}
@objc protocol ToDoCellDelegate : class {
    func checkmarkTapped(sender: ToDoCell)
}
