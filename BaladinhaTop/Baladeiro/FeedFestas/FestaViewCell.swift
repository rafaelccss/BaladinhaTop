//
//  TableViewCell.swift
//  BaladinhaTop
//
//  Created by Ercília Regina Silva Dantas on 08/05/21.
//

import UIKit

class FestaViewCell: UITableViewCell {


    @IBOutlet var imgView: UIImageView!
    @IBOutlet var titleParty: UILabel!
    @IBOutlet var hostName: UILabel!
    @IBOutlet var eventDate: UILabel!
    @IBOutlet var tagOne: UILabel!
    @IBOutlet var tagTwo: UILabel!
    @IBOutlet var tagThree: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

