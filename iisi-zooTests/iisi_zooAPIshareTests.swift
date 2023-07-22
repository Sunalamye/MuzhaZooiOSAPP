//
//  iisi_zooTests.swift
//  iisi-zooTests
//
//  Created by Suoie on 2023/7/20.
//

import XCTest

@testable import iisi_zoo

final class iisi_zooAPIshareTests: XCTestCase {

    let sut = APIManager.share

    func testGetParkInformation() async throws {
        let config = try await sut.getParkInformation()
        XCTAssertEqual(config.result.limit, 1000)
        if let test = config.result.results?.first,let name = test.eName,let data = test.importdate?.date{
            XCTAssertEqual(name, "臺灣動物區")
            XCTAssertEqual(data, "2022-05-09 14:47:38.971190")
            
        }
    }
    func testGetPlantInformation() async throws {
        let config = try await sut.getPlantInformation()
        XCTAssertEqual(config.result.limit, 1000)
        if let test = config.result.results?.first,let fLocation = test.fLocation,let id = test.id{
            XCTAssertEqual(fLocation, "臺灣動物區；蟲蟲探索谷；熱帶雨林區；鳥園；兩棲爬蟲動物館")
            XCTAssertEqual(id, 1)
            
        }
    }
    
    func testGetAnimalData() async throws {
        let config = try await sut.getAnimalData()
        XCTAssertEqual(config.result.limit, 1000)
        if let test = config.result.results?.first,let aDistribution = test.aDistribution,let data = test.importdate?.date{
            XCTAssertEqual(aDistribution, "目前僅存於中國四川、甘肅和陜西三省境內。")
            XCTAssertEqual(data, "2022-12-23 14:05:14.668579")
            
        }
    }

}
