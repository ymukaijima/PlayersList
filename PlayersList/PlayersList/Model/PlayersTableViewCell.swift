//
//  PlayersTableViewCell.swift
//  PlayersList
//
//  Created by yumi on 2020/06/09.
//  Copyright © 2020 Yumi Takahashi. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {
    // TableViewで表示させたい項目の設定
    @IBOutlet weak var playersView: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
