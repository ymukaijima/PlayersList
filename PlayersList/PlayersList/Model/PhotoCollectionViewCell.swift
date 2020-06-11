//
//  PhotoCollectionViewCell.swift
//  PlayersList
//
//  Created by yumi on 2020/06/11.
//  Copyright © 2020 Yumi Takahashi. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // CollectionViewで使用する画像の角を丸くする
        imageView.layer.cornerRadius = 12
    }

}
