//
//  LoginVC.swift
//  3rd_Assignment
//
//  Created by ✨EUGENE✨ on 2020/11/11.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var partTextfield: UITextField!
    @IBOutlet var nameTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpHome(_ sender: Any) {
        guard let pvc = self.storyboard?.instantiateViewController(identifier: "HomeVC") as? HomeVC else {
            return
        }
        pvc.part = self.partTextfield.text
        
        self.dismiss(animated: true, completion: nil)
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
