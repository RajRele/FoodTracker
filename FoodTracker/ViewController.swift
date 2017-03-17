//
//  ViewController.swift
//  FoodTracker
//
//  Created by Bharat on 3/15/17.
//  Copyright © 2017 Bharat. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var mealValue: UITextField!
    @IBOutlet weak var mealLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        mealValue.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        mealLable.text = mealValue.text
    }
    
    
    //MARK: Actions
    @IBAction func setDefaultbtn(_ sender: UIButton) {
        mealLable.text="Default Text"
    }
    
    


}

