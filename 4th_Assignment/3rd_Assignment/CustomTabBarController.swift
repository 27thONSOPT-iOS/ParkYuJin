//
//  CustomTabBarController.swift
//  3rd_Assignment
//
//  Created by ✨EUGENE✨ on 2020/11/11.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        // Do any additional setup after loading the view.
    }
    
    func setTabBar() {
        guard let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeVC") as? HomeVC,
              let networkingVC = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController
        else {
            return
        }
        
        homeVC.tabBarItem.title = "Home"
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        networkingVC.tabBarItem.title = "SOPT+NETWORKING"
        networkingVC.tabBarItem.image = UIImage(systemName: "paperplane")
        networkingVC.tabBarItem.selectedImage = UIImage(systemName: "paperplane.fill")
        
        setViewControllers([homeVC, networkingVC], animated: true)
    }


}
