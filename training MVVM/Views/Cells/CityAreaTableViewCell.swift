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
    
    private var areaImageView = UIImageView()
    private var areaSideTittleLabel = UILabel()
    private var areaNameTittleLabel = UILabel()
    private var areaButton = UIButton()
    private var imageAlphaOverlay = UIView()
    

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
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8))
        let contentViewGradientColors: [UIColor] = [
            .darkGray,
            .darkGray,
            .black
        ]
        contentView.applyGradient(colors: contentViewGradientColors, startPoint: .init(x: 0.5, y: 0), endPoint: .init(x: 0.5, y: 1))
    }
    
    func configureWithViewModel(areaItem: Area) {
        areaImageView.image = UIImage(named: areaItem.imageName)
        areaSideTittleLabel.text = areaItem.name
    }

}

// MARK: - Layout

extension CityAreaTableViewCell {
    
    private func setupSubviews() {
        
        contentView.addSubview(areaImageView)
        contentView.addSubview(areaSideTittleLabel)
        contentView.addSubview(areaNameTittleLabel)
        areaImageView.addSubview(imageAlphaOverlay)

        contentView.layer.cornerRadius = 16
        backgroundColor = .white
        
        areaImageView.layer.cornerRadius = 16
        areaImageView.clipsToBounds = true
           
        areaNameTittleLabel.font = .systemFont(ofSize: 15, weight: .regular)
        areaNameTittleLabel.textColor = .white
        
        areaSideTittleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        areaSideTittleLabel.textColor = .white
        areaSideTittleLabel.layer.applySketchShadow(color: .black, alpha: 0.5, x: 0, y: 4, blur: 4, spread: 0)
        
        let imageGradientColors: [UIColor] = [
            .clear,
            UIColor().hexStringToUIColor(hex: "#2B2B2F")
        ]
        imageAlphaOverlay.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 51)
        imageAlphaOverlay.applyGradient(colors: imageGradientColors, startPoint: .init(x: 0.5, y: 0), endPoint: .init(x: 0.5, y: 1))

    }
    
    private func configureConstraints() {
        
        areaImageView.snp.makeConstraints {
            $0.leading.top.trailing.equalToSuperview().inset(8)
            $0.bottom.equalToSuperview().inset(98)
            $0.height.equalTo(220)
            $0.width.equalTo(UIScreen.main.bounds.width)
        }
        
        areaSideTittleLabel.snp.makeConstraints {
            $0.top.equalTo(areaImageView.snp.bottom).offset(8)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview().inset(46)
        }

        areaNameTittleLabel.snp.makeConstraints {
            $0.top.equalTo(areaSideTittleLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalToSuperview().inset(94)
        }
        
        imageAlphaOverlay.snp.makeConstraints {
            $0.top.equalToSuperview().offset(167)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
    
}
