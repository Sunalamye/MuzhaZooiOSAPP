//
//  APIManager+Env.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/6/8.
//

import SwiftUI

struct ZooApiManager: EnvironmentKey{
    static let defaultValue: APIManager = .share
}

extension EnvironmentValues{
    var apiManager: APIManager{
        get{ self[ZooApiManager.self]}
        set{ self[ZooApiManager.self] = newValue}
    }
}

