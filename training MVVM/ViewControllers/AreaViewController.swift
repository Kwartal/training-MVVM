//
//  AreaViewController.swift
//  training MVVM
//
//  Created by Богдан Баринов on 30.10.2022.
//

import UIKit
import SnapKit

final class AreaViewController: UIViewController {
    
    var area: Area
    private var whriteAnoteTitle = UILabel()
    private var noteView = UIView()
    
    init(area: Area) {
        self.area = area
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubviews()
        setupSubviews()
        configureConstraints()
    }

}

extension AreaViewController {
    
    private func addSubviews() {
        view.addSubview(whriteAnoteTitle)
    }
    
    private func setupSubviews() {
        whriteAnoteTitle.font = .systemFont(ofSize: 24, weight: .semibold)
        whriteAnoteTitle.text = "Оставьте заметку"
    }
    
    private func configureConstraints() {
        whriteAnoteTitle.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(16)
        }
    }
    
}
