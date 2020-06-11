//
//  DetailViewController.swift
//  PlayersList
//
//  Created by yumi on 2020/06/10.
//  Copyright © 2020 Yumi Takahashi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // CollectionViewの設定
    @IBOutlet weak var collectionView: UICollectionView!

    var viewWidth: CGFloat!
    var viewHeight: CGFloat!
    var cellWidth: CGFloat!
    var cellHeight: CGFloat!
    var cellOffset: CGFloat!
    var navHeight: CGFloat!
    
    // CollectionViewで使用する画像
    var photoArray = ["carp1", "carp2"]

    // imageViewとLabelの設定
    @IBOutlet weak var playersView: UIImageView!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    
    // PlayersInfoの情報を使えるようにする
    var playersInfo: PlayersInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CollectionViewの設定
        viewWidth = view.frame.width
        viewHeight = view.frame.height
        navHeight = self.navigationController?.navigationBar.frame.size.height

        collectionView.delegate = self
        collectionView.dataSource = self

        let nib = UINib(nibName: "PhotoCollectionViewCell", bundle: .main)
        collectionView.register(nib, forCellWithReuseIdentifier: "PhotoCollectionViewCell")

        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()

        // playersInfoをアンラップ
        guard let playersInfo = playersInfo else { return }
        
        // 遷移元から引き継がれた値をUIに反映
        playersView.image = UIImage(named: playersInfo.iconName)
        positionLabel.text = playersInfo.position
        nameLabel.text = playersInfo.name
        numberLabel.text = playersInfo.number
        birthDateLabel.text = playersInfo.birthDate
        typeLabel.text = playersInfo.type
        hometownLabel.text = playersInfo.homeTown
    }

    // CollectionViewの設定
    // コレクションビューに配置するセルの個数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    // セルの中身
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCollectionViewCell", for: indexPath) as! PhotoCollectionViewCell
        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 12
        cell.layer.shadowOpacity = 0.4
        cell.layer.shadowRadius = 12
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 8, height: 8)
        cell.layer.masksToBounds = false
        
        cell.imageView.image = UIImage(named: photoArray[indexPath.row])

        return cell
    }
    
    // セル同士の間隔
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 24
    }
    
    // 余白の調整
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: -navHeight,left: cellOffset/2,bottom: 0,right: cellOffset/2)
    }
}

