//
//  ViewController.swift
//  iOS
//
//  Created by Лолита Чернышева on 30/11/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func pressButton(_ sender: Any) {
        guard let loginInput = login.text,
            let passwordInput = password.text   else {
            return
        }
        if loginInput == "admin" && passwordInput == "0000" {
            print("успешная авторизация")
        } else {
            print("введены неверные логин или пароль")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hideAction = UITapGestureRecognizer (target: self, action: #selector(hideKeyboard))
            view.addGestureRecognizer(hideAction)
        }
        @objc func hideKeyboard() {
            view.endEditing(true)
    }


}

