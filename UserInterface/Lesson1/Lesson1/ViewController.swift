//
//  ViewController.swift
//  Lesson1
//
//  Created by Лолита Чернышева on 11/08/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo! as NSDictionary
        let size = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        _ = UIEdgeInsets(top: 0, left: 0, bottom: size.height, right: 0)
        
        //self.scrollView.contentInset = insets
        //self.scrollView.scrollIndicatorInsets = insets
    }
    
    @objc func keyboardWillHidden(notification: Notification) {
        let insets = UIEdgeInsets.zero
        self.scrollView.contentInset = insets
        self.scrollView.scrollIndicatorInsets = insets
    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
        let login = self.loginTextField.text ?? "nan"
        let pass = self.passwordTextField.text ?? "nan"
        
        if login == "admin" && pass == "0000" {
            print("Успешно")
        } else {
            print("Ошибка данных")
        }
        
    }
}

