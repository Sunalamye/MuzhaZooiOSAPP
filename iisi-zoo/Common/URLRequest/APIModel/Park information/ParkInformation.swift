//
//  ParkInformation.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/20.
//

import Foundation

extension APIManager{
    func getParkInformation() async throws -> ResponData<ParkInformation>{
        try await fetch(endPoint: .parkInformation)
    }
}

// MARK: - ZooInfo
struct ParkInformation: Codable {
    let id: Int?
    let importdate: Importdate?
    let eNo, eCategory, eName: String?
    let ePicURL: String?
    let eInfo, eMemo, eGeo: String?
    let eURL: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case importdate = "_importdate"
        case eNo = "e_no"
        case eCategory = "e_category"
        case eName = "e_name"
        case ePicURL = "e_pic_url"
        case eInfo = "e_info"
        case eMemo = "e_memo"
        case eGeo = "e_geo"
        case eURL = "e_url"
    }
}

// MARK: - Importdate
struct Importdate: Codable {
    let date: String?
    let timezoneType: Int?
    let timezone: String?

    enum CodingKeys: String, CodingKey {
        case date
        case timezoneType = "timezone_type"
        case timezone
    }
}

