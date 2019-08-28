//
//  MyGroupsVC.swift
//  Lesson2
//
//  Created by Лолита Чернышева on 25/08/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import UIKit

protocol MyGroupsDeligate {
    func vc (_ vc: MyGroupsVC, didSelectGroup: String)
}
class MyGroupsVC: UITableViewController {
    var groups: [String] = ["Пикабу" , "Питер Онлайн", "GeekBrains"]
    var deligate: MyGroupsDeligate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return groups.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupCell") as!
        AllGroupCell
        cell.setupWithGroup(groups[indexPath.row])
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let group = groups[indexPath.row]
        deligate?.vc(self, didSelectGroup: group)
        self.navigationController?.popViewController(animated: true)
    }

}
