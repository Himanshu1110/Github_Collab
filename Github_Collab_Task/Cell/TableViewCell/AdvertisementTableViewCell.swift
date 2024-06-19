//
//  AdvertisementTableViewCell.swift
//  Github_Collab_Task
//
//  Created by Webcodegenie on 19/06/24.
//

import UIKit

class AdvertisementTableViewCell: UITableViewCell {

    @IBOutlet weak var llblratings: UILabel!
    @IBOutlet weak var btnHeart: UIButton!
    @IBOutlet weak var lblRate: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var lblNAme: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
