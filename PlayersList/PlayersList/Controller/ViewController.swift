//
//  ViewController.swift
//  PlayersList
//
//  Created by yumi on 2020/06/09.
//  Copyright © 2020 Yumi Takahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // 選手情報が入っているClassをインスタンス化
    let info = Info()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableViewCellを読み込む関数
        configureTableViewCell()
        
        // tableViewのUI処理を任せるのは自分
        tableView.delegate = self
        // tableViewのデータ処理を任せるのは自分
        tableView.dataSource = self
        
    }
    
    // TableViewCellを読み込む関数
    func configureTableViewCell() {
        // TableViewCellのクラス名を指定してNibを作成
        let nib = UINib(nibName: "PlayersTableViewCell", bundle: nil)
        // Xibに設定したidentifier
        let cellID = "PlayersTableViewCell"
        // TableViewCellにcellのIdentifierを指定して登録
        tableView.register(nib, forCellReuseIdentifier: cellID)
    }
    
    // sectionの数を返すDelegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    // セクションのタイトルを設定する
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return info.sectionTitles[section]
    }

    //　一つのセクションに入れるCellの数を指定する
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // セクションごとにCell数が違うのでif文を使って指定
        if section == 0 || section == 2 || section == 3{
            return info.infoLists[0].count
        } else if section == 1 {
            return info.infoLists[1].count
        } else if section == 4 {
            return info.infoLists[4].count
        } else {
            return 0
        }
    }
    
    // Cellの内容を設定する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayersTableViewCell" , for: indexPath) as! PlayersTableViewCell
        
        for i in 0...4 {
            if indexPath.section == i {
                // 画像の設定
                cell.playersView.image = UIImage(named: info.infoLists[i][indexPath.row].iconName)
                // 名前の設定
                cell.nameLabel.text = info.infoLists[i][indexPath.row].name
                // 背番号の設定
                cell.numberLabel.text = info.infoLists[i][indexPath.row].number
            }
        }
        return cell
    }
        
    // tableViewのCellがタップされた時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        // タップされた情報を遷移先のvcへ引き継ぐ
        vc.playersInfo = info.infoLists[indexPath.section][indexPath.row]
        // 画面遷移
        navigationController?.pushViewController(vc, animated: true)
    }
}

