//
//  casosTableViewCell.swift
//  CovidGto
//
//  Created by Carlos Cardona on 05/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import UIKit

class casosTableViewCell: UITableViewCell {
    
    @IBOutlet weak var casosTitle: UILabel!
    @IBOutlet weak var casosNumber: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
