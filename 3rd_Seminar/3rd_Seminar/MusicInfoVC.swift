//
//  MusicInfoVC.swift
//  3rd_Seminar
//
//  Created by ✨EUGENE✨ on 2020/10/31.
//

import UIKit

class MusicInfoVC: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var singerLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var music: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        // Do any additional setup after loading the view.
    }
        
    func setLayout() {
        if let music = self.music {
            titleLabel.text = music.title
            singerLabel.text = music.singer
            imageView.image = music.makeAlbumImage()
        }
    }
}
