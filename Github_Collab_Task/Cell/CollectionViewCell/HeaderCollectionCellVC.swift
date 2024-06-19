//
//  HeaderCollectionCellVC.swift
//  Github_Collab_Task
//
//  Created by Webcodegenie on 19/06/24.
//

import UIKit

class HeaderCollectionCellVC: UICollectionViewCell {
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ViewCollection: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ViewCollection.layer.cornerRadius = 15
        ViewCollection.layer.masksToBounds = true
//        ViewCollection.layer.backgroundColor = UIColor(named: "blue")?.cgColor
    }
}
