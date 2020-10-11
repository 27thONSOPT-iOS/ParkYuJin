//
//  SecondViewController.swift
//  FirstSeminar
//
//  Created by ✨EUGENE✨ on 2020/10/10.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func touchUpClose(_ sender: Any) {
//        present에만 해당
//        self.dismiss(animated: true, completion: nil)
        
//        navigation pop
        self.navigationController?.popViewController(animated: true)
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
