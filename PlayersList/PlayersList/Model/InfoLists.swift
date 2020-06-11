//
//  InfoLists.swift
//  PlayersList
//
//  Created by yumi on 2020/06/11.
//  Copyright © 2020 Yumi Takahashi. All rights reserved.
//

import Foundation

class Info {
    // 表示させたい選手情報
    let infoLists: [[PlayersInfo]] = [
        [PlayersInfo(iconName: "12", name: "九里 亜蓮", number: "12", position: "投手", birthDate: "生年月日　1991年9月1日", type: "タイプ　右投右打", homeTown: "出身地　鳥取県"),
         PlayersInfo(iconName: "14", name: "大瀬良 大地", number: "14", position: "投手", birthDate: "生年月日　1991年6月17日", type: "タイプ　右投右打", homeTown: "出身地　長崎県"),
         PlayersInfo(iconName: "16", name: "今村 猛", number: "16", position: "投手", birthDate: "生年月日　1991年4月17日", type: "タイプ　右投右打", homeTown: "出身地　長崎県")],
        
        [PlayersInfo(iconName: "27", name: "會澤 翼", number: "27", position: "捕手", birthDate: "生年月日　1988年4月13日", type: "タイプ　右投右打", homeTown: "出身地　茨城県"),
         PlayersInfo(iconName: "31", name: "石原 慶幸", number: "31", position: "捕手", birthDate: "生年月日　1979年9月7日", type: "タイプ　右投右打", homeTown: "出身地　岐阜県")],
        
        [PlayersInfo(iconName: "2", name: "田中 広輔", number: "2", position: "内野手", birthDate: "生年月日　1989年7月3日", type: "タイプ　右投左打", homeTown: "出身地　神奈川県"),
         PlayersInfo(iconName: "6", name: "安部 友裕", number: "6", position: "内野手", birthDate: "生年月日　1989年6月24日", type: "タイプ　右投左打", homeTown: "出身地　福岡県"),
         PlayersInfo(iconName: "33", name: "菊池 涼介", number: "33", position: "内野手", birthDate: "生年月日　1990年3月11日", type: "タイプ　右投右打", homeTown: "出身地　東京都")],
        
        [PlayersInfo(iconName: "1", name: "鈴木 誠也", number: "1", position: "外野手", birthDate: "生年月日　1994年8月18日", type: "タイプ　右投右打", homeTown: "出身地　東京都"),
         PlayersInfo(iconName: "5", name: "長野 久義", number: "5", position: "外野手", birthDate: "生年月日　1984年12月6日", type: "イプ　右投右打", homeTown: "出身地　佐賀県"),
         PlayersInfo(iconName: "37", name: "野間 峻祥", number: "37", position: "外野手", birthDate: "生年月日　1993年1月28日", type: "タイプ　右投左打", homeTown: "出身地　兵庫県")],
        
        [PlayersInfo(iconName: "!", name: "スラィリ―", number: "!", position: "マスコット", birthDate: "生年月日　1995年7月29日", type: "趣味・特技　いたずら・ダンス", homeTown: "出身地　？")]
    ]
    
    // セクション名
    let sectionTitles = ["投手", "捕手", "内野手", "外野手", "マスコット"]
}
