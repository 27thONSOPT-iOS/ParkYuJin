//
//  Part.swift
//  3rd_Seminar
//
//  Created by ✨EUGENE✨ on 2020/10/31.
//

import UIKit

struct Part {
    var imageName: String
    var partName: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
