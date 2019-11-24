 //
//  ViewController.swift
//  VK
//
//  Created by Лолита Чернышева on 24/11/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func pressButton(_ sender: Any) {
        guard let loginInput = login.text,
            let passwordInput = password.text else {
                return
        }
        print(loginInput + " " + passwordInput)
    }
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var authorization: UILabel!
    @IBOutlet weak var login: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hideAction = UITapGestureRecognizer (target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideAction)
    }
    @objc func hideKeyboard() {
        view.endEditing(true)
    }


}

