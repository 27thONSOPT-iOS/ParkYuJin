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
    @IBOutlet var nameLabel: UILabel!
    
    var part: String?
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        setLabel()
        }
    func setLabel(){
        if let part = self.part {
            self.partLabel.text = part
            self.partLabel.sizeToFit()
            self.partImageView.image = UIImage(named: part)
        }
        if let name = self.name {
            self.nameLabel.text = "\(name)님 안녕하세요"
        }
    }
    @IBAction func touchUpLogin(_ sender: UIButton) {
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
