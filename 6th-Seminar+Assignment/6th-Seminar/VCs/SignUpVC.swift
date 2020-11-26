//
//  SignUpVC.swift
//  6th-Seminar
//
//  Created by ✨EUGENE✨ on 2020/11/21.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인",style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func touchUpReg(_ sender: Any) {
        
        guard let emailText = emailTextField.text,
              let passwordText = passwordTextField.text,
              let userNameText = userNameTextField.text else {
            return
        }
        
        AuthService.shared.signUp(email: emailText,
                                  password: passwordText,
                                  userName: userNameText) { (networkResult) in
            switch networkResult {
            case .success(let data):
                self.dismiss(animated: true, completion: nil)
                
            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "회원가입 실패", message: message)
                }
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
        
        
    }
}
