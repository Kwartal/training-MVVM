//
//  CityAreasViewController.swift
//  training MVVM
//
//  Created by Богдан Баринов on 26.10.2022.
//

import UIKit
import SnapKit

class CityAreasViewController: UIViewController {
    
    private var moscowDistricts = Moscow.districts
    
    // MARK: - UI elements
    
    private var chooseLocationTitleLabel = UILabel()
    private var tableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        addSubviews()
        configureConstraints()
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.register(CityAreaTableViewCell.self, forCellReuseIdentifier: CityAreaTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
    }
}

extension CityAreasViewController: UITableViewDataSource, UITableViewDelegate {
    
    //Секция это Тайтл округа. Пример: ЦАО, ЗАО. В нашем случае это 9 секций
    func numberOfSections(in tableView: UITableView) -> Int {
        moscowDistricts.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        moscowDistricts[section].areas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CityAreaTableViewCell.identifier, for: indexPath) as? CityAreaTableViewCell else { return UITableViewCell()}
        let district = moscowDistricts[indexPath.section] // формат district
        let areas = district.areas // формат [Area]
        let area = areas[indexPath.row] // формат Area
        
        
        
        cell.configureWithViewModel(areaItem: area)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return moscowDistricts[section].name
        
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.textColor = UIColor.black
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 26)
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("privet1")
        let vc = MapViewController(area: moscowDistricts[indexPath.section].areas[indexPath.row])
        vc.modalPresentationStyle = .popover
        present(vc, animated: true)
        
    }
    
}

// MARK: - Layout
extension CityAreasViewController {
    
    private func addSubviews() {
//        view.addSubview(chooseLocationTitleLabel)
        view.addSubview(tableView)
    }
    
    private func setupSubviews() {
        
        view.backgroundColor = .white
        
        tableView.backgroundColor = .white
    }
    
    private func configureConstraints() {

        tableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
    
}

