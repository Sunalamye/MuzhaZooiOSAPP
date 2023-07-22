//
//  Bundle-Decodable.swift
//  iisi-zooTests
//
//  Created by Suoie on 2023/7/21.
//

import Foundation

let kpark = "park"
let kplant = "plant"
let kanimal = "animal"


extension Bundle {
    func getJson(_ file: String) -> Data? {
        
        guard let url = Bundle.main.url(forResource: file, withExtension: "json") else {
            return nil
        }
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        return data
    }
}
