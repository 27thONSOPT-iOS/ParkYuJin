//
//  MusicRankCell.swift
//  3rd_Seminar
//
//  Created by ✨EUGENE✨ on 2020/10/31.
//

import UIKit

class MusicRankCell: UITableViewCell {
    
    //실수를 줄여주기 위해 static 변수로 identifier를 만듦. 클래스랑 같은 이름으로!
    static let identifier = "MusicRankCell"
    
    @IBOutlet var rankLabel: UILabel!
    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var singerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setCell(rank: Int, music: Music) {
        albumImageView.image = music.makeAlbumImage()
        rankLabel.text = "\(rank + 1)"
        titleLabel.text = music.title
        singerLabel.text = music.singer
    }

}
