//
//  CityAreasViewController.swift
//  training MVVM
//
//  Created by Богдан Баринов on 26.10.2022.
//

import UIKit
import SnapKit

class CityAreasViewController: UIViewController {
    
    private var areasItemsArray = MockData.areaItems
    
    // MARK: - UI elements
    
    private var chooseCityTitleLabel = UILabel()
    private var tableView = UITableView()
    
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
    }
}

extension CityAreasViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        areasItemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CityAreaTableViewCell.identifier, for: indexPath) as? CityAreaTableViewCell else { return UITableViewCell()}
        cell.configureWithViewModel(areaItem: areasItemsArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 316
    }
    
}

// MARK: - Layout
extension CityAreasViewController {
    
    private func addSubviews() {
        view.addSubview(chooseCityTitleLabel)
        view.addSubview(tableView)
    }
    
    private func setupSubviews() {
        
        view.backgroundColor = .black
        chooseCityTitleLabel.text = "Choose City"
        chooseCityTitleLabel.textColor = .white
        chooseCityTitleLabel.font = .systemFont(ofSize: 18, weight: .regular)
        
        tableView.backgroundColor = .black
        
    }
    
    private func configureConstraints() {
        chooseCityTitleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(51)
        }
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(chooseCityTitleLabel.snp.bottom).offset(16)
            $0.leading.trailing.bottom.equalToSuperview()
            
        }
    }
    
}

