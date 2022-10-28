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

