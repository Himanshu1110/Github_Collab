//
//  MaskedXYTableViewCell.swift
//  Github_Collab_Task
//
//  Created by Webcodegenie on 19/06/24.
//

import UIKit

class MaskedXYTableViewCell: UITableViewCell {

    @IBOutlet weak var viewMask: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewMask.layer.masksToBounds = true
        viewMask.layer.cornerRadius = 12
        viewMask.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
       
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
