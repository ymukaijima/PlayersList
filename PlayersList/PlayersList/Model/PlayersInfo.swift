//
//  PlayersInfo.swift
//  PlayersList
//
//  Created by yumi on 2020/06/09.
//  Copyright © 2020 Yumi Takahashi. All rights reserved.
//

import Foundation

class PlayersInfo {
    // 画像の名前
    let iconName: String
    // 選手名
    let name: String
    // 背番号
    let number: String
    // ポジション
    let position: String
    // 生年月日
    let birthDate: String
    // タイプ
    let type: String
    // 出身地
    let homeTown: String
    // インスタンス化するときに利用する関数
    init(iconName: String, name: String, number: String, position: String, birthDate: String, type: String, homeTown: String) {
        self.iconName = iconName
        self.name = name
        self.number = number
        self.position = position
        self.birthDate = birthDate
        self.type = type
        self.homeTown = homeTown
    }
}
