//
//  PlantInformation.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/20.
//

import Foundation

extension APIManager{
    func getPlantInformation() async throws -> ResponData<PlantModel>{
        try await fetch(endPoint: .plantInformation)
    }
}

// MARK: - ZooInfo
struct PlantModel: Codable {
    let id: Int?
    let fNameCh, fSummary, fKeywords, fAlsoKnown: String?
    let fGeo, fLocation, fNameEn, fNameLatin: String?
    let fFamily, fGenus, fBrief, fFeature: String?
    let fFunctionApplication, fCode, fPic01ALT: String?
    let fPic01URL: String?
    let fPic02ALT, fPic02URL, fPic03ALT, fPic03URL: String?
    let fPic04ALT, fPic04URL, fPdf01ALT, fPdf01URL: String?
    let fPdf02ALT, fPdf02URL, fVoice01ALT, fVoice01URL: String?
    let fVoice02ALT, fVoice02URL, fVoice03ALT, fVoice03URL: String?
    let fVedioURL, fUpdate, fCid: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case fNameCh = "\u{feff}F_Name_Ch"
        case fSummary = "F_Summary"
        case fKeywords = "F_Keywords"
        case fAlsoKnown = "F_AlsoKnown"
        case fGeo = "F_Geo"
        case fLocation = "F_Location"
        case fNameEn = "F_Name_En"
        case fNameLatin = "F_Name_Latin"
        case fFamily = "F_Family"
        case fGenus = "F_Genus"
        case fBrief = "F_Brief"
        case fFeature = "F_Feature"
        case fFunctionApplication = "F_Function＆Application"
        case fCode = "F_Code"
        case fPic01ALT = "F_Pic01_ALT"
        case fPic01URL = "F_Pic01_URL"
        case fPic02ALT = "F_Pic02_ALT"
        case fPic02URL = "F_Pic02_URL"
        case fPic03ALT = "F_Pic03_ALT"
        case fPic03URL = "F_Pic03_URL"
        case fPic04ALT = "F_Pic04_ALT"
        case fPic04URL = "F_Pic04_URL"
        case fPdf01ALT = "F_pdf01_ALT"
        case fPdf01URL = "F_pdf01_URL"
        case fPdf02ALT = "F_pdf02_ALT"
        case fPdf02URL = "F_pdf02_URL"
        case fVoice01ALT = "F_Voice01_ALT"
        case fVoice01URL = "F_Voice01_URL"
        case fVoice02ALT = "F_Voice02_ALT"
        case fVoice02URL = "F_Voice02_URL"
        case fVoice03ALT = "F_Voice03_ALT"
        case fVoice03URL = "F_Voice03_URL"
        case fVedioURL = "F_Vedio_URL"
        case fUpdate = "F_Update"
        case fCid = "F_CID"
    }
}
