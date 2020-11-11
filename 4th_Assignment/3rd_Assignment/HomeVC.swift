//
//  HomeVC.swift
//  3rd_Assignment
//
//  Created by ✨EUGENE✨ on 2020/11/11.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet var partImageView: UIImageView!
    @IBOutlet var partLabel: UILabel!
    @IBOutlet var partNameLabel: UILabel!
    
    var part: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        // Do any additional setup after loading the view.
    }
    func setLabel(){
        if let part = self.part {
            self.partNameLabel.text = part
            self.partNameLabel.sizeToFit()
        }
    }
    @IBAction func touchUpLogin(_ sender: Any) {
        if let nextVC =
            storyboard?.instantiateViewController(identifier: "LoginVC") {
            nextVC.modalPresentationStyle = .fullScreen
            self.present(nextVC, animated: true, completion: nil)
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
