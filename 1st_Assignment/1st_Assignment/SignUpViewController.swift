//
//  SignUpViewController.swift
//  1st_Assignment
//
//  Created by ✨EUGENE✨ on 2020/10/14.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet var partTextField: UITextField!
    @IBOutlet var birthTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign Up"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpLogin(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
