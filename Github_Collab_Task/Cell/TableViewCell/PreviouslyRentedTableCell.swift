//
//  PreviouslyRentedTableCell.swift
//  Github_Collab_Task
//
//  Created by Webcodegenie on 19/06/24.
//

import UIKit

class PreviouslyRentedTableCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var viewRented: UIView!
    var flag = false
    var arrImage = ["tab","tent","cooker","tab","tent","cooker"]
    @IBOutlet weak var collectionHistroy: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionHistroy.delegate = self
        collectionHistroy.dataSource = self
        viewRented.layer.cornerRadius = 15
        viewRented.layer.masksToBounds = true
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PreviouslyCollectionViewCell", for: indexPath) as! PreviouslyCollectionViewCell
        if indexPath.row % 2 == 0 {
            cell.btnLike.tintColor = .purple
        }
        else{
            cell.btnLike.tintColor = .lightGray
        }
        cell.imageView.image = UIImage(named: arrImage[indexPath.row])
        return cell
    }
}
