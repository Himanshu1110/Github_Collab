//
//  CustomTabbarController.swift
//  Github_Collab_Task
//
//  Created by Webcodegenie on 19/06/24.
//

import UIKit

class CustomTabbarController: UITabBarController {
    
    let btnMiddle : UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        btn.setTitle("", for: .normal)
        btn.backgroundColor = .purple
        btn.tintColor = .white
        btn.setImage(UIImage(systemName: "plus"), for: .normal)
        btn.layer.cornerRadius = 30
        btn.addTarget(self, action: #selector(onClickMiddleBtn), for: .touchUpInside)
        return btn
        
    }()
    override func viewDidLoad() {
            super.viewDidLoad()

        let controller1 = UIStoryboard(name: "Main", bundle: nibBundle).instantiateViewController(identifier: "ViewController") as! ViewController
        
            controller1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
            let nav1 = UINavigationController(rootViewController: controller1)

            let controller2 = UIViewController()
            
            let nav2 = UINavigationController(rootViewController: controller2)
            nav2.title = ""

            let controller3 = UIStoryboard(name: "UserProfile", bundle: nibBundle).instantiateViewController(identifier: "UserProfileVC") as! UserProfileVC
        controller3.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 3)
            let nav3 = UINavigationController(rootViewController: controller3)
           

            viewControllers = [nav1, nav2, nav3]
        btnMiddle.frame = CGRect(x: Int(self.tabBar.frame.width)/2 - 30, y: -25 , width: 60, height: 60)
        self.tabBar.addSubview(btnMiddle)
        self.tabBar.tintColor = .black
        
        }

  

        // MARK: - Actions

        @objc private func onClickMiddleBtn(sender: UIButton) {
            selectedIndex = 2
        }
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {

        btnMiddle.frame = CGRect(x: Int(size.width)/2 - 30, y: -25 , width: 60, height: 60)
    }

    }
