//
//  ViewController.swift
//  ADGRITPRJ
//
//  Created by Navdeep Rajpurohit on 21/01/20.
//  Copyright © 2020 navdeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var dobPicker: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.dobPicker?.setInputViewDatePicker(target: self, selector: #selector(tapDone))
    }
    @objc func tapDone() {
        if let datePicker = self.dobPicker.inputView as? UIDatePicker { // 2-1
            let dateformatter = DateFormatter() // 2-2
            dateformatter.dateStyle = .medium // 2-3
            self.dobPicker.text = dateformatter.string(from: datePicker.date) //2-4
        }
        self.dobPicker.resignFirstResponder() // 2-5
    }

    @IBAction func login_button(_ sender: Any) {
        performSegue(withIdentifier: "login_segue", sender: self)
    }
    
    @IBAction func signup_button(_ sender: Any) {
        performSegue(withIdentifier: "signup_segue", sender: self)
    }
    @IBAction func login_back_button(_ sender: UIButton) {
         performSegue(withIdentifier: "login_back_segue", sender: self)
    }
    @IBAction func signup_back_button(_ sender: UIButton) {
         performSegue(withIdentifier: "signup_back_segue", sender: self)
    }
    @IBAction func date_back_button(_ sender: UIButton) {
         performSegue(withIdentifier: "date_back_segue", sender: self)
    }
   
   
    
}

