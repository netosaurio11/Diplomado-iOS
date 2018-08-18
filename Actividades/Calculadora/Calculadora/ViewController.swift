//
//  ViewController.swift
//  Calculadora
//
//  Created by Ernesto Mejia on 18/08/18.
//  Copyright © 2018 Ernesto Mejia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        labelResult.text = String(sender.tag)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

