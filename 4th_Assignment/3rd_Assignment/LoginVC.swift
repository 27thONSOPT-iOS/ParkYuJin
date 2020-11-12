//
//  LoginVC.swift
//  3rd_Assignment
//
//  Created by ✨EUGENE✨ on 2020/11/11.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var rootView: UIView!
    @IBOutlet var partTextfield: UITextField!
    @IBOutlet var nameTextfield: UITextField!
    
    var keyboardShown: Bool = false
    var originY: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        }
    
    @IBAction func touchUpHome(_ sender: UIButton) {
        let presentVC = self.presentingViewController as? UITabBarController
        presentVC?.selectedIndex = 0
        
        guard let homeVC = presentVC?.selectedViewController as? HomeVC else { return }
        homeVC.part = self.partTextfield.text
        
        self.presentingViewController?.dismiss(animated: true)
    }

}
