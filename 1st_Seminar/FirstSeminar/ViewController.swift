//
//  ViewController.swift
//  FirstSeminar
//
//  Created by ✨EUGENE✨ on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchUpClick(_ sender: Any) {
        helloLabel.text = "Hello ON SOPT!"
        helloLabel.sizeToFit()
    }
    
    @IBAction func touchUpPresent(_ sender: Any) {

        guard let dvc = self.storyboard?.instantiateViewController(identifier:"SecondViewController") else {
            return
        }
//        modal present
//        self.present(dvc, animated: true, completion: nil)
        
//        navigation
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    

}

