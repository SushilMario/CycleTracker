//
//  ViewController.swift
//  ADGRITPRJ
//
//  Created by Navdeep Rajpurohit on 21/01/20.
//  Copyright © 2020 navdeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

