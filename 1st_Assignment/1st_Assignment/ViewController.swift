//
//  ViewController.swift
//  1st_Assignment
//
//  Created by ✨EUGENE✨ on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var part: String?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        // Do any additional setup after loading the view.
    }

    func setLabel(){
        if let part = self.part,
           let name = self.name {
            self.partLabel.text = part
            self.partLabel.sizeToFit()
            
            self.nameLabel.text = "✨\(name)님 안녕하세요✨"
//            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func touchUpLogin(_ sender: UIButton) {
        if let nextvc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") {
            self.present(nextvc, animated: true, completion: nil)
        }
    }
    
}

