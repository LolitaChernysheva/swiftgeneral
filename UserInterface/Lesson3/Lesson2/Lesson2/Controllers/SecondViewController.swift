//
//  SecondViewController.swift
//  Lesson2
//
//  Created by Лолита Чернышева on 18/08/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Table: UITableView!
    @IBAction func closeButtonTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
