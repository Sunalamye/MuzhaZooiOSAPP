//
//  PlantInformationVC.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/22.
//

import Stevia
import RxSwift
import RxCocoa

class PlantInformationVC: UIViewController {
    
    let disposebag = DisposeBag()
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let leftAndRight = 20
    
    let pictureImageView = UIImageView()
    let info = UILabel()
    
    
    var plant:PlantModel = .init(id: nil, fNameCh: nil, fSummary: nil, fKeywords: nil, fAlsoKnown: nil, fGeo: nil, fLocation: nil, fNameEn: nil, fNameLatin: nil, fFamily: nil, fGenus: nil, fBrief: nil, fFeature: nil, fFunctionApplication: nil, fCode: nil, fPic01ALT: nil, fPic01URL: nil, fPic02ALT: nil, fPic02URL: nil, fPic03ALT: nil, fPic03URL: nil, fPic04ALT: nil, fPic04URL: nil, fPdf01ALT: nil, fPdf01URL: nil, fPdf02ALT: nil, fPdf02URL: nil, fVoice01ALT: nil, fVoice01URL: nil, fVoice02ALT: nil, fVoice02URL: nil, fVoice03ALT: nil, fVoice03URL: nil, fVedioURL: nil, fUpdate: nil, fCid: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        // Do any additional setup after loading the view.
    }
    private func setView(){
        navigationItem.title = plant.fNameCh
        view.backgroundColor = .white
        
        view.sv(scrollView)
        scrollView.sv(contentView)
        
        contentView.sv(
            pictureImageView,
            info
        )
        
        scrollView.fillContainer()
        contentView.width(100%)
        contentView.Top == scrollView.Top
        contentView.Bottom == scrollView.Bottom
        contentView.Left == scrollView.Left
        contentView.Right == scrollView.Right
        
        pictureImageView.sd_setImage(with: URL(string: plant.fPic01URL ?? ""))
        let pictureHeight = view.frame.size.height * 2 / 7
        pictureImageView.height(pictureHeight)

        pictureImageView.width(100%)
        pictureImageView.Top == contentView.Top + 10
        
        info.Top == pictureImageView.Bottom + 30
        info.Left == contentView.Left + leftAndRight
        info.Right == contentView.Right + leftAndRight
        info.Bottom == contentView.Bottom
        info.numberOfLines = 0
        info.text = """
\(plant.fNameCh ?? "")
\(plant.fNameEn ?? "")

別名
\(plant.fAlsoKnown ?? "")

簡介
\(plant.fBrief ?? "")

辨示方式
\(plant.fFeature ?? "")

功能性
\(plant.fFunctionApplication ?? "")

最後更新\(plant.fUpdate ?? "")

"""
        
    }


}
