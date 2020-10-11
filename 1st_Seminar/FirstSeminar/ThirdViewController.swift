//
//  ThirdViewController.swift
//  FirstSeminar
//
//  Created by ✨EUGENE✨ on 2020/10/10.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var updateStateLabel: UILabel!
    
    @IBOutlet weak var updateIntervalLabel: UILabel!
    
    @IBOutlet weak var updateStateSwitch: UISwitch!
    
    @IBOutlet weak var updateStateStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            self.updateStateLabel.text =  "자동 갱신"
        } else {
            self.updateStateLabel.text = "수동 갱신"
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        self.updateIntervalLabel.text = "\(Int(sender.value)) 분 마다"
    }
    
    @IBAction func touchUpSubmit(_ sender: Any) {
//        guard let
//        guard let nextvc = self.storyboard?.instantiateViewController(identifier: "FourthViewController")as?FourthViewController else{
//            return
//        }
        if let nextvc = self.storyboard?.instantiateViewController(identifier: "FourthViewController")as?FourthViewController {
            nextvc.email = self.emailTextfield.text
            nextvc.isAutoUpdate = self.updateStateSwitch.isOn
            nextvc.updateInterval = Int(updateStateStepper.value)
            
            self.present(nextvc, animated: true, completion: nil)
        }
        
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
