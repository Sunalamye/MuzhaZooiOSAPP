//
//  UIImage+.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/6/17.
//


import UIKit

extension UIImage{
    ///設定圖片大小
    
    func resizeImage( width: CGFloat) -> UIImage {
            let size = CGSize(width: width, height:width)
            let renderer = UIGraphicsImageRenderer(size: size)
            let newImage = renderer.image { (context) in
                self.draw(in: renderer.format.bounds)
            }
            return newImage
    }
    func resizeImage( width: CGFloat,height:CGFloat) -> UIImage {
            let size = CGSize(width: width, height:height)
            let renderer = UIGraphicsImageRenderer(size: size)
            let newImage = renderer.image { (context) in
                self.draw(in: renderer.format.bounds)
            }
            return newImage
    }
}
