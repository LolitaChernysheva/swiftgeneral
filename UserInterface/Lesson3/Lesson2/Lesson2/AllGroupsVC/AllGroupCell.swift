//
//  AllGroupCell.swift
//  Lesson2
//
//  Created by Лолита Чернышева on 25/08/2019.
//  Copyright © 2019 Лолита Чернышева. All rights reserved.
//

import UIKit

class AllGroupCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupWithGroup(_ group: String) {
        label.text = group
    }

}
