//
//  ViewController.swift
//  1st_Assignment
//
//  Created by ✨EUGENE✨ on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var partLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var part: String?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        setLabel()
    }
    func setLabel(){
        if let part = self.part,
           let name = self.name {
            self.partLabel.text = part
            self.partLabel.sizeToFit()

            self.nameLabel.text = "✨\(name)님 안녕하세요✨"
        }
    }
    @IBAction func touchUpLogin(_ sender: UIButton) {
        if let loginvc = self.storyboard?.instantiateViewController(identifier: "NavigationViewController") {
            self.present(loginvc, animated: true, completion: nil)
        }
    }
    
}

