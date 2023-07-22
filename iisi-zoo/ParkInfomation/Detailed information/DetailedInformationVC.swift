//
//  DetailedInformationVC.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/22.
//

import Stevia
import RxSwift
import RxCocoa

class DetailedInformationVC: UIViewController {
    let viewModel = PlantInformationViewModel()
    let disposebag = DisposeBag()
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let pictureImageView = UIImageView()
    let infoLabel = UILabel()
    let memoLabel = UILabel()
    let categoryLabel = UILabel()
    let titleLabel = UILabel()
    let lineView = UIView()
    let tableView = UITableView()

    let leftAndRight = 20
    
    var park: ParkInformation = .init(id:nil, importdate: nil, eNo: nil, eCategory: nil, eName: nil, ePicURL: nil, eInfo: nil, eMemo: nil, eGeo: nil, eURL: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setupTableView()
        bindViewModel()
    }
    private func setupTableView() {
        tableView.register(InfoCell.self, forCellReuseIdentifier: "InfoCell")
//        tableView.fillContainer()
        tableView.rowHeight = 120
    }
    
    private func setView(){
        navigationItem.title = park.eName
        view.backgroundColor = .white
        
        view.sv(scrollView)
        scrollView.sv(contentView)
        
        contentView.sv(
            titleLabel,
            pictureImageView,
            infoLabel,
            memoLabel,
            categoryLabel,
            lineView,
            tableView
        )
        
        scrollView.fillContainer()
        contentView.width(100%)
        contentView.Top == scrollView.Top
        contentView.Bottom == scrollView.Bottom
        contentView.Left == scrollView.Left
        contentView.Right == scrollView.Right

        // Set up pictureImageView
        
        pictureImageView.sd_setImage(with: URL(string: park.ePicURL ?? ""))
        let pictureHeight = view.frame.size.height * 2 / 7
        pictureImageView.height(pictureHeight)

        pictureImageView.width(100%)
        pictureImageView.Top == contentView.Top + 10

        // Set up infoLabel
        infoLabel.text = park.eInfo
        infoLabel.numberOfLines = 0
        infoLabel.font = UIFont.systemFont(ofSize: 14)
        infoLabel.Left == contentView.Left + leftAndRight
        infoLabel.Right == contentView.Right - leftAndRight
        infoLabel.Top == pictureImageView.Bottom + 10

        // Set up memoLabel
        memoLabel.text = park.eMemo
        memoLabel.font = UIFont.systemFont(ofSize: 14)
        memoLabel.Left == contentView.Left + leftAndRight
        memoLabel.Right == contentView.Right - leftAndRight
        memoLabel.Top == infoLabel.Bottom + 5

        // Set up categoryLabel
        categoryLabel.text = park.eCategory
        categoryLabel.font = UIFont.systemFont(ofSize: 14)
        categoryLabel.Left == contentView.Left + leftAndRight
        categoryLabel.Right == contentView.Right - leftAndRight
        categoryLabel.Top == memoLabel.Bottom + 5
        
        lineView.Top == categoryLabel.Bottom
        lineView.Left == contentView.Left
        lineView.Right == contentView.Right
        lineView.height(20)
        lineView.backgroundColor = .gray
        
        
        titleLabel.text = "植物資料"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.Top == lineView.Bottom + leftAndRight
        titleLabel.Left == contentView.Left + leftAndRight
//        titleLabel.Bottom == contentView.Bottom - 10
        
        tableView.Top == titleLabel.Bottom + 10
        tableView.Left == contentView.Left + leftAndRight
        tableView.Right == contentView.Right + leftAndRight
        tableView.Bottom == contentView.Bottom
        tableView.height(360)
    }
    
    private func bindViewModel() {
        viewModel.plantInformation
            .map{$0.map{.init(model: $0)}}
            .bind(to: tableView.rx.items(cellIdentifier: "InfoCell", cellType: InfoCell.self)) { row, model, cell in
                cell.configure(with: model)
            }
            .disposed(by: disposebag)
        
        tableView.rx.modelSelected(InfoCellModel.self)
            .compactMap(\.plant)
            .subscribe(onNext: {[weak self] model in
                let vc = PlantInformationVC()
                vc.plant = model
                if let self{
                    self.navigationController?.pushViewController(vc, animated: true)
                }
            }).disposed(by: disposebag)
    }
}
