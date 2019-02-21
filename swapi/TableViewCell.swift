//
//  TableViewCell.swift
//  swapi
//
//  Created by Alfin Taufiqurrahman on 21/02/19.
//  Copyright © 2019 Alfin Taufiqurrahman. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var labelNama: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
