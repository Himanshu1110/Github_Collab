//
//  UserProfileVC.swift
//  Github_Collab_Task
//
//  Created by webcodegenie on 19/06/24.
//

import UIKit

class UserProfileVC: UIViewController {
    
    var IsRedirect:Bool!
    
    var userData = [String]()
    var userEmail = ""
    @IBOutlet weak var viewUserImage: UIView!
    @IBOutlet weak var imgUser: UIImageView!
    
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblContactNo: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        imgUser.clipsToBounds = true
        imgUser.layer.cornerRadius = imgUser.frame.height/2
        imgUser.layer.borderWidth = 4.0
        imgUser.layer.borderColor = UIColor.white.cgColor
        
        setUserProfile()
        
        viewUserImage.clipsToBounds = true
        viewUserImage.layer.cornerRadius = 10
        viewUserImage.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        userEmail = UserDefaults.standard.string(forKey: "Email") ?? "temp123"
    }
    
    @IBAction func onClickLogout(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey: "IsRedirect")
        //        self.navigationController?.popViewController(animated: true)
    }
    func setUserProfile(){
        
        if (UserDefaults.standard.string(forKey: "Email") != nil){
            lblEmail.text = userEmail
        }
        lblUserName.text = "John Smith"
        lblEmail.text = "johnSmith@12.com"
        lblContactNo.text = "9887766500"
        lblAddress.text = "58 Middle Point Rd ,San Francisco, California(CA), 94124"
    }
    
    
    
}
