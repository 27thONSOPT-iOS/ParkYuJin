//
//  PickerViewTestVC.swift
//  3rd_Seminar
//
//  Created by ✨EUGENE✨ on 2020/10/31.
//

import UIKit

class PickerViewTestVC: UIViewController {

    
    @IBOutlet var partImageView: UIImageView!
    @IBOutlet var partNameLabel: UILabel!
    @IBOutlet var partPickerView: UIPickerView!
    
    
    var parts: [Part] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartData()
        initLayout()
        partPickerView.delegate = self //위임
        partPickerView.dataSource = self //위임
        // Do any additional setup after loading the view.
    }
    
    func initLayout() {
        let initPart = parts[0]
        partImageView.image = initPart.makeImage()
        partNameLabel.text = initPart.partName
    }
    func setPartData() { parts.append(contentsOf: [
        Part(imageName: "plan", partName: "Plan"), Part(imageName: "design", partName: "Design"), Part(imageName: "server", partName: "Server"), Part(imageName: "ios", partName: "iOS"), Part(imageName: "android", partName: "Android"), Part(imageName: "web", partName: "Web")
        ])
    }
}

extension PickerViewTestVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //열개수. 컴포넌트 1개
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return parts.count //parts 에셋 개수만큼 행을 넣을거라 .count 함
    }
    
    
}

extension PickerViewTestVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row].partName //파라메터로 각 행이 들어옴 -> titleForRow row
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectPart = parts[row]
        
        self.partImageView.image = selectPart.makeImage()
        self.partNameLabel.text = selectPart.partName
    }
}
