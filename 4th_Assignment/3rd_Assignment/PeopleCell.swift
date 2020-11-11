//
//  PeopleCell.swift
//  3rd_Assignment
//
//  Created by ✨EUGENE✨ on 2020/11/05.
//

import UIKit

class PeopleCell: UICollectionViewCell {
    
    static let identifier = "PeopleCell"
    
    @IBOutlet var peopleImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var tagLabel: UILabel!
    
    
    func setCell(people: People) {
        peopleImageView.image = people.makePersonImage()
        nameLabel.text = people.name
        tagLabel.text = people.tag
    }
}
