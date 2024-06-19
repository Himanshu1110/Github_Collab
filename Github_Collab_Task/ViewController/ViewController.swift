//
//  ViewController.swift
//  Github_Collab_Task
//
//  Created by Webcodegenie on 19/06/24.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDelegate, UITableViewDataSource    {
    var arrSection = ["Lease Again","Available Now","Hot Sellers","For You"]
    var arrColors = [UIColor.yellow,UIColor.blue,UIColor.green,UIColor.red,UIColor.lightGray,UIColor.yellow] as! [UIColor]
    var arrCategory = ["Sports","Electronics","Tools","Sports","Electronics","Tools"]
   
    
    @IBOutlet weak var collectionHeader: UICollectionView!
    @IBOutlet weak var lblHearder: UILabel!
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        collectionHeader.delegate = self
        collectionHeader.dataSource = self
        self.navigationController?.isNavigationBarHidden = true
        self.navigationController?.isToolbarHidden = true
        tblView.tableFooterView = UIView(frame: .zero)
    }
    override func viewWillAppear(_ animated: Bool) {
        lblHearder.layer.masksToBounds = true
        lblHearder.layer.cornerRadius = 15
        self.tblView.sectionFooterHeight = 0.0
        self.tblView.sectionHeaderHeight = 0.0
        self.tblView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 60, right: 0)
    }

    @IBAction func onClickNotification(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "NotificationViewController") as! NotificationViewController
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionHeader.dequeueReusableCell(withReuseIdentifier: "HeaderCollectionCellVC", for: indexPath) as! HeaderCollectionCellVC
        cell.lblCategory.tintColor = .black
        cell.lblCategory.text = arrCategory[indexPath.row]
        
        cell.imageView.image = UIImage(named: arrCategory[indexPath.row])
        cell.ViewCollection.layer.masksToBounds = true
        cell.ViewCollection.backgroundColor = arrColors[indexPath.row]
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MaskedXYTableViewCell", for: indexPath) as! MaskedXYTableViewCell
            return cell
        }
       else if indexPath.section == 1 {
           let cell = tableView.dequeueReusableCell(withIdentifier: "PreviouslyRentedTableCell", for: indexPath) as! PreviouslyRentedTableCell
           self.tblView.sectionHeaderHeight = 0.0
           cell.flag.toggle()
           return cell
        }
        else if indexPath.section == 2 {
             let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementTableViewCell", for: indexPath) as! AdvertisementTableViewCell
            self.tblView.sectionHeaderHeight = 0.0
             return cell
         }
        else{
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "PreviouslyRentedTableCell", for: indexPath) as! PreviouslyRentedTableCell
            cell.flag.toggle()
            self.tblView.sectionHeaderHeight = 0.0
            return cell
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            let view : UIView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 0))
            return view
        }
        else{
            let view : UIView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 60))
            let label : UILabel = UILabel(frame: CGRect(x: 20, y: 5, width: 200, height: 50))
            label.text = arrSection[section - 1]
            label.textColor = .black
            label.font = UIFont.systemFont(ofSize: 22
                                           , weight: .medium)
            label.backgroundColor = .clear
            view.addSubview(label)
            
            let button : UIButton = UIButton(frame: CGRect(x: Int(self.tblView.frame.width) - 90, y: 13, width: 80, height: 30))
            button.tintColor = .purple
            button.setTitle("View all  ", for: .normal)
            button.semanticContentAttribute = .forceRightToLeft
            button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
            button.autoresizingMask = .flexibleRightMargin
            button.setTitleColor(UIColor.purple, for: .normal)
            button.layer.cornerRadius = 15
            button.backgroundColor = .white
            button.layer.masksToBounds = true
            view.backgroundColor = .white
            if section == 2 {
            }
            else{
                view.addSubview(button)
            }
            return view
        }
       
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 0
        }
        else{
            return 60
            
        }
    }
 
    
}


