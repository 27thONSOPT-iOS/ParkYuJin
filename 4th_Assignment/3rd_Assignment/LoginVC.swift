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
        partTextfield.delegate = self
        nameTextfield.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        registerForKeyboardNotifications()
        }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        unregisterForKeyboardNotifications()
    }
    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShowNotification(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHideNotification(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    func unregisterForKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBAction func touchUpHome(_ sender: UIButton) {
        let presentVC = self.presentingViewController as? UITabBarController
        presentVC?.selectedIndex = 0
        
        guard let homeVC = presentVC?.selectedViewController as? HomeVC else { return }
        homeVC.part = self.partTextfield.text
        homeVC.name = self.nameTextfield.text
        self.presentingViewController?.dismiss(animated: true)
    }

    @objc func keyboardWillShowNotification(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if keyboardSize.height == 0.0 || keyboardShown == true {
                    return
                }
            
                UIView.animate(withDuration: 0.33, animations: { () -> Void in
                    if self.originY == nil { self.originY = self.rootView.frame.origin.y }
                    self.rootView.frame.origin.y = self.originY! - keyboardSize.height/3
                }, completion: { _ in
                    self.keyboardShown = true
                })
        }
    }

    @objc func keyboardWillHideNotification(_ notification: Notification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
              if keyboardShown == false {
                  return
              }

              UIView.animate(withDuration: 0.33, animations: { () -> Void in
                guard self.originY != nil else { return }
                self.rootView.frame.origin.y = self.originY!
              }, completion: { _ in
                    self.keyboardShown = false
              })
            }
    }
}
extension LoginVC: UITextFieldDelegate {
    
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if textField == partTextfield {
      nameTextfield.becomeFirstResponder()
    } else {
        nameTextfield.endEditing(true)
    }
    return true
  }
}
