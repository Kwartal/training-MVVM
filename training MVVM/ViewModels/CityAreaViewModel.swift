//
//  CityAreaViewModel.swift
//  training MVVM
//
//  Created by Богдан Баринов on 01.11.2022.
//

import Foundation

protocol CityAreaViewModelDelegate: AnyObject {
    func segueToAreaVC(area: Area)
    
}

final class CityAreaViewModel: NSObject {
    
    weak var delegate: CityAreaViewModelDelegate?
    private var moscowDistricts = Moscow.districts
    var title = "Выберите район"

//     init() {
//        super.init()
//    }
    
    
    
    func numberOfSections() -> Int {
        moscowDistricts.count
    }
    
    func numberOfRows(in section: Int) -> Int {
        moscowDistricts[section].areas.count
    }
    
    func titleForHeader(in section: Int) -> String? {
        return moscowDistricts[section].name
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        let area = moscowDistricts[indexPath.section].areas[indexPath.row]
        delegate?.segueToAreaVC(area: area)
    }
    
    func area(for indexPath: IndexPath) -> Area {
        let district = moscowDistricts[indexPath.section] // формат district
        let areas = district.areas // формат [Area]
        let area = areas[indexPath.row] // формат Area
        return area
    }

}
