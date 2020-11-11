//
//  People.swift
//  3rd_Assignment
//
//  Created by ✨EUGENE✨ on 2020/11/05.
//

import UIKit

struct People {
    
    var name: String
    var tag: String
    var personImageName: String
    
    func makePersonImage() -> UIImage? {
        return UIImage(named: personImageName)
    }
}
