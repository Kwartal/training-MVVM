//
//  CityAreasViewController.swift
//  training MVVM
//
//  Created by Богдан Баринов on 26.10.2022.
//

import UIKit
import SnapKit

final class CityAreasViewController: UIViewController {
    
    private var viewModel: CityAreaViewModel
    
    // MARK: - UI elements
    
    private var tableView = UITableView(frame: .zero, style: .grouped)
    
    init() {
        viewModel = CityAreaViewModel()
        super.init(nibName: nil, bundle: nil)
        viewModel.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.title
        setupSubviews()
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
        viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CityAreaTableViewCell.identifier, for: indexPath) as? CityAreaTableViewCell else { return UITableViewCell()}
            
        
        cell.configureWithViewModel(areaItem: viewModel.area(for: indexPath))
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.titleForHeader(in: section)
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.textColor = UIColor.black
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 26)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didSelectRow(at: indexPath)
    }
}

// MARK: - Layout
extension CityAreasViewController {
    
    private func addSubviews() {
        view.addSubview(tableView)
    }
    
    private func setupSubviews() {
        addSubviews()
        configureConstraints()
        configureTableView()
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    private func configureConstraints() {

        tableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
}

extension CityAreasViewController :  CityAreaViewModelDelegate {
    
    func segueToAreaVC(area: Area) {
        let vc = AreaViewController(area: area)
        vc.modalPresentationStyle = .popover
        present(vc, animated: true)
    }
}

