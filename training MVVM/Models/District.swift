//
//  District.swift
//  training MVVM
//
//  Created by Богдан Баринов on 28.10.2022.
//

import Foundation

struct District {
    
    let name: String
    let areas: [Area]
    
    init(name: String, areas: [Area]) {
        self.name = name
        self.areas = areas
    }
    

}

//struct MockData {
//    static let areaItems = [
//    Area(ImageName: "Arbat", side: "ЦАО", name: "Арбатская 25"),
//    Area(ImageName: "Sadovod", side: "ВАО", name: "Садоводская 19"),
//    Area(ImageName: "RUDN", side: "ЮЗАО", name: "Бакинских комиссаров 28")
//    ]
//
//}
//
//struct DistrictInfo {
//
//    let imageName: String
//    let streetName: String
//    let infoStreet: String
//
//    init(imageName: String, streetName: String, infoStreet: String) {
//        self.imageName = imageName
//        self.streetName = streetName
//        self.infoStreet = infoStreet
//    }
//
//}
