//
//  AllGroupsVC.swift
//  Lesson2
//
//  Created by Лолита Чернышева on 25/08/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import UIKit

class AllGroupsVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var groups: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        //tableView.deligate = self;
  
    }
    
    @IBAction func AddGroupButtonTap(_ sender: Any) {
        performSegue(withIdentifier: "ToSelect", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MyGroupsVC
        vc.deligate = self
    
    }
}
extension AllGroupsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupCell") as!
        AllGroupCell
        cell.setupWithGroup(groups[indexPath.row])
        return cell
    }
}
extension AllGroupsVC: MyGroupsDeligate {
    func vc(_ vc: MyGroupsVC, didSelectGroup group: String) {
       groups.append(group)
        tableView.reloadData()
    }
}

    

