//
//  ViewController.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/20.
//

import RxSwift
import RxCocoa

class ViewController: UIViewController {

    let tableView = UITableView()
    let viewModel = ParkInformationViewModel()

    let disposebag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        bindViewModel()
        self.navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "台北動物園"
    }

    private func setupTableView() {
        tableView.register(InfoCell.self, forCellReuseIdentifier: "InfoCell")
        view.sv(tableView)
        tableView.fillContainer()
        tableView.rowHeight = 120
    }

    private func bindViewModel() {
        viewModel.parkInformation
            .map{$0.map{.init(model: $0)}}
            .bind(to: tableView.rx.items(cellIdentifier: "InfoCell", cellType: InfoCell.self)) { row, model, cell in
                cell.configure(with: model)
            }
            .disposed(by: disposebag)
        
        tableView.rx.modelSelected(InfoCellModel.self)
            .compactMap(\.parkInfo)
            .subscribe(onNext: {[weak self] model in
                let vc = DetailedInformationVC()
                vc.park = model
                vc.navigationController?.title = model.eName
                if let self{
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }).disposed(by: disposebag)
    }
}
