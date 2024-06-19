//
//  PreviouslyCollectionViewCell.swift
//  Github_Collab_Task
//
//  Created by Webcodegenie on 19/06/24.
//

import UIKit

class PreviouslyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblRate: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnLike: UIButton!
    @IBOutlet weak var startLbl: UILabel!
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var viewCollection: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewCollection.layer.cornerRadius = 10
        
        
    }
}
