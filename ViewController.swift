//
//  ViewController.swift
//  FoodTracker
//
//  Created by Alexander Lindgren on 08/03/2016.
//  Copyright © 2016 Alexander Lindgren. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        // Hide the keyboard.
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions


    @IBAction func setDefaultTextLabel(sender: UIButton) {
        
        //TEST UPDATE TO GITHUB
        //ANOTHER UPDATE
        mealNameLabel.text = "Default Text"
        
    }
    
}

