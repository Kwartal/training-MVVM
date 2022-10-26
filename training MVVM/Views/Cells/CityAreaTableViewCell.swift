//
//  CityAreaTableViewCell.swift
//  training MVVM
//
//  Created by Богдан Баринов on 26.10.2022.
//

import UIKit

final class CityAreaTableViewCell: UITableViewCell {
    
    static let identifier = "CityAreaTableViewCell"
    
    // MARK: - UI Elements
    private var chooseCityTitleLabel = UILabel()
    
    private lazy var areaImageView = UIImageView()
    private lazy var areaSideTittleLabel = UILabel()
    private lazy var areaNameTittleLabel = UILabel()
    private lazy var areaButton = UIButton()
    
    

    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        contentView.backgroundColor = .black
        setupSubviews()
        configureConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureWithViewModel(areaItem: Area) {
        areaImageView.image = UIImage(named: areaItem.ImageName)
        areaNameTittleLabel.text = areaItem.name
        areaSideTittleLabel.text = areaItem.side
    }

}

// MARK: - Layout

extension CityAreaTableViewCell {
    
    private func setupSubviews() {
        
        contentView.addSubview(areaImageView)
        contentView.addSubview(areaSideTittleLabel)
        contentView.addSubview(areaNameTittleLabel)
        contentView.addSubview(areaButton)
        
        areaNameTittleLabel.font = .systemFont(ofSize: 15, weight: .regular)
        areaNameTittleLabel.textColor = .white
        areaSideTittleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        areaSideTittleLabel.textColor = .white

        
        areaButton.backgroundColor = .systemBrown
        areaButton.layer.cornerRadius = 20
        areaButton.setImage(UIImage(systemName: "chevron.forward"), for: .normal)
        areaButton.tintColor = .white
        

    }
    
    private func configureConstraints() {
        
        areaImageView.snp.makeConstraints {
            $0.leading.top.trailing.equalToSuperview()
            $0.height.equalTo(258)
            $0.width.equalTo(375)
        }
        
        areaSideTittleLabel.snp.makeConstraints {
            $0.top.equalTo(areaImageView.snp.bottom).offset(8)
            $0.leading.equalToSuperview().offset(16)
            
        }
        
        areaNameTittleLabel.snp.makeConstraints {
            $0.top.equalTo(areaSideTittleLabel.snp.bottom).offset(4)
            $0.leading.equalToSuperview().offset(16)
        }
        
        areaButton.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(5)
            $0.trailing.equalToSuperview().inset(5)
            $0.height.equalTo(46)
            $0.width.equalTo(76)
        }
    }
    
}
