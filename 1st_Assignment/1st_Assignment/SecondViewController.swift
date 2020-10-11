//
//  SecondViewController.swift
//  1st_Assignment
//
//  Created by ✨EUGENE✨ on 2020/10/11.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpMain(_ sender: UIButton) {
        guard let pvc = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else {
            return
        }
        pvc.part = self.partTextField.text
        pvc.name = self.nameTextField.text
        
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func touchUpSignup(_ sender: Any) {
        guard let nextvc = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") else {
            return
        }
        self.navigationController?.pushViewController(nextvc, animated: true)
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
