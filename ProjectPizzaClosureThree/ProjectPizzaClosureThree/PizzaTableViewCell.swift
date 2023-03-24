//
//  PizzaTableViewCell.swift
//  ProjectPizzaClosureThree
//
//  Created by Mirian Santana on 24/03/23.
//

import UIKit
import SDWebImage

class PizzaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblPizzaName: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
