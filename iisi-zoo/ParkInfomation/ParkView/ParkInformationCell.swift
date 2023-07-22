//
//  ParkCell.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/22.
//

import UIKit
import Stevia
import SDWebImage

class InfoCell: UITableViewCell {

    let pictureImageView = UIImageView()
    let nameLabel = UILabel()
    let infoLabel = UILabel()
    let memoLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        
        sv(
            pictureImageView,
            nameLabel,
            infoLabel,
            memoLabel
        )
        
        pictureImageView.size(100)
        pictureImageView.Left == contentView.Left + 10
        pictureImageView.Top == contentView.Top + 10
        pictureImageView.Bottom == contentView.Bottom - 10
        
        nameLabel.Left == pictureImageView.Right + 10
        nameLabel.Right == contentView.Right - 10
        nameLabel.Top == contentView.Top + 10
        nameLabel.height(<=20)
        
        infoLabel.Left == nameLabel.Left
        infoLabel.Right == nameLabel.Right
        infoLabel.Top == nameLabel.Bottom + 5
        infoLabel.height(<=50)
        
        memoLabel.Left == nameLabel.Left
        memoLabel.Right == nameLabel.Right
        memoLabel.Top == infoLabel.Bottom + 5
        memoLabel.Bottom == contentView.Bottom - 5

        // Add accessory type
        self.accessoryType = .disclosureIndicator

        // Font settings
        nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
        infoLabel.font = UIFont.systemFont(ofSize: 14)
        memoLabel.font = UIFont.systemFont(ofSize: 14)
        infoLabel.numberOfLines = 0
    }

    func configure(with parkInformation: InfoCellModel) {
        
        pictureImageView.sd_setImage(with: parkInformation.url)
        nameLabel.text = parkInformation.name
        infoLabel.text = parkInformation.info
        memoLabel.text = parkInformation.memo
    }
}

struct InfoCellModel{
    let url: URL?
    let name: String?
    let info: String?
    let memo: String?
    
    let parkInfo:ParkInformation?
    let plant:PlantModel?
    
}

extension InfoCellModel{
    init(model:ParkInformation){
        url = URL(string: model.ePicURL ?? "")
        name = model.eName
        info = model.eInfo
        memo = model.eMemo
        parkInfo = model
        plant = nil
    }
    init(model:PlantModel){
        url = URL(string: model.fPic01URL ?? "")
        name = model.fNameCh
        info = model.fAlsoKnown
        plant = model
        parkInfo = nil
        memo = nil
    }
}
