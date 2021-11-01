//
//  TableViewCell.swift
//  LearningProject
//
//  Created by MACBOOK on 01/11/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var contentLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
