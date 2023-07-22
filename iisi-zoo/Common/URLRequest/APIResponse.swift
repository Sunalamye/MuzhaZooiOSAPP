//
//  APIResponse.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/6/21.
//

import Foundation

struct ResponData<T: Codable>: Codable{
    let result: Result<T>

}

// MARK: - Result
struct Result<T: Codable>: Codable {

    let limit, offset, count: Int?
    let sort: String?
    let results: [T]?
}
