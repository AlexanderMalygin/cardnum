//
//  ViewController.swift
//  cardnum
//
//  Created by Alexader Malygin on 09.12.2019.
//  Copyright © 2019 Alexader Malygin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var card: Card?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cardNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.text = card?.name
        cardNumberTextField.text = card?.cardNumber
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        card?.name = nameTextField.text
        card?.cardNumber = cardNumberTextField.text
    }

    @IBAction func saveButton(_ sender: Any) {
        card?.name = nameTextField.text
        card?.cardNumber = cardNumberTextField.text
    }
    
}

