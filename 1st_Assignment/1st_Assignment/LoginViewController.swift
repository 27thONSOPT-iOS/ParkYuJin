//
//  LoginViewController.swift
//  1st_Assignment
//
//  Created by ✨EUGENE✨ on 2020/10/14.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var partTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpLogin(_ sender: UIButton) {
        guard let homevc = self.presentingViewController as? ViewController else {return}
        
        homevc.part = self.partTextField.text
        homevc.name = self.nameTextField.text
                
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func touchUpSignUp(_ sender: UIButton) {
        guard let signUpvc = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") else {
                    return
                }
        self.navigationController?.pushViewController(signUpvc, animated: true)

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
