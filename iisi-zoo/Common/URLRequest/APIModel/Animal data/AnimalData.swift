//
//  AnimalData.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/20.
//

import Foundation
extension APIManager{
    func getAnimalData() async throws -> ResponData<AnimalData>{
        try await fetch(endPoint: .animalData)
    }
}

// MARK: - ZooInfo
struct AnimalData: Codable {
    let id: Int?
    let importdate: Importdate?
    let aNameCh, aSummary, aKeywords, aAlsoknown: String?
    let aGeo, aLocation, aPoigroup, aNameEn: String?
    let aNameLatin, aPhylum, aClass, aOrder: String?
    let aFamily, aConservation, aDistribution, aHabitat: String?
    let aFeature, aBehavior, aDiet, aCrisis: String?
    let aInterpretation, aThemeName: String?
    let aThemeURL: String?
    let aAdopt, aCode, aPic01Alt: String?
    let aPic01URL: String?
    let aPic02Alt: String?
    let aPic02URL: String?
    let aPic03Alt: String?
    let aPic03URL: String?
    let aPic04Alt: String?
    let aPic04URL: String?
    let aPdf01Alt: String?
    let aPdf01URL: String?
    let aPdf02Alt: String?
    let aPdf02URL: String?
    let aVoice01Alt: String?
    let aVoice01URL: String?
    let aVoice02Alt: String?
    let aVoice02URL: String?
    let aVoice03Alt: String?
    let aVoice03URL: String?
    let aVedioURL: String?
    let aUpdate, aCid: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case importdate = "_importdate"
        case aNameCh = "a_name_ch"
        case aSummary = "a_summary"
        case aKeywords = "a_keywords"
        case aAlsoknown = "a_alsoknown"
        case aGeo = "a_geo"
        case aLocation = "a_location"
        case aPoigroup = "a_poigroup"
        case aNameEn = "a_name_en"
        case aNameLatin = "a_name_latin"
        case aPhylum = "a_phylum"
        case aClass = "a_class"
        case aOrder = "a_order"
        case aFamily = "a_family"
        case aConservation = "a_conservation"
        case aDistribution = "a_distribution"
        case aHabitat = "a_habitat"
        case aFeature = "a_feature"
        case aBehavior = "a_behavior"
        case aDiet = "a_diet"
        case aCrisis = "a_crisis"
        case aInterpretation = "a_interpretation"
        case aThemeName = "a_theme_name"
        case aThemeURL = "a_theme_url"
        case aAdopt = "a_adopt"
        case aCode = "a_code"
        case aPic01Alt = "a_pic01_alt"
        case aPic01URL = "a_pic01_url"
        case aPic02Alt = "a_pic02_alt"
        case aPic02URL = "a_pic02_url"
        case aPic03Alt = "a_pic03_alt"
        case aPic03URL = "a_pic03_url"
        case aPic04Alt = "a_pic04_alt"
        case aPic04URL = "a_pic04_url"
        case aPdf01Alt = "a_pdf01_alt"
        case aPdf01URL = "a_pdf01_url"
        case aPdf02Alt = "a_pdf02_alt"
        case aPdf02URL = "a_pdf02_url"
        case aVoice01Alt = "a_voice01_alt"
        case aVoice01URL = "a_voice01_url"
        case aVoice02Alt = "a_voice02_alt"
        case aVoice02URL = "a_voice02_url"
        case aVoice03Alt = "a_voice03_alt"
        case aVoice03URL = "a_voice03_url"
        case aVedioURL = "a_vedio_url"
        case aUpdate = "a_update"
        case aCid = "a_cid"
    }
}

