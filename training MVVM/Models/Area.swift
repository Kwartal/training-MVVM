//
//  Area.swift
//  training MVVM
//
//  Created by Богдан Баринов on 26.10.2022.
//

import Foundation

struct Area {
    
    let ImageName: String
    let side: String
    let name: String
    
    init(ImageName: String, side: String, name: String) {
        self.ImageName = ImageName
        self.side = side
        self.name = name
    }
    
}

struct MockData {
    static let areaItems = [
    Area(ImageName: "Arbat", side: "ЦАО", name: "Арбатская 25"),
    Area(ImageName: "Sadovod", side: "ВАО", name: "Садоводская 19"),
    Area(ImageName: "RUDN", side: "ЮЗАО", name: "Бакинских комиссаров 28")
    ]
    
}


