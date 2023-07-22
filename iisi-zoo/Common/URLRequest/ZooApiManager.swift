//
//  ZooApi.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/6/7.
//

import SwiftUI

enum ServerIP{
    private
    static var share:ServerIP = .normal
    case normal
    static var ip:String{
        switch share {
        case .normal:
            return "https://data.taipei/api/v1/dataset/"
        }
    }
    
    static func setIP(server:ServerIP){
        share = server
    }
}


final class APIManager{
    
    var getData: (EndPoint) async throws -> Data
    
    static let share = {
        let config = URLSessionConfiguration.default
        var header = config.httpAdditionalHeaders ?? [:]
        config.httpAdditionalHeaders = header
        let session = URLSession(configuration: config)
        return APIManager{try await session.data(for: $0.request)}
    }()
    
    static let stub = APIManager{$0.stub}
    
    private init(getData: @escaping (EndPoint) async throws -> Data){
        self.getData = getData
    }
    
}

extension APIManager{
    
    func fetch<T:Decodable>(endPoint:EndPoint) async throws ->T{
        let dateFromatter = DateFormatter()
        dateFromatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let data = try await getData(endPoint)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(dateFromatter)
        if let jsonString = String(data: data, encoding: .utf8) {
            #if DEBUG
            print("------------respone----------------")
            print(jsonString)
            print("------------respone----------------")
            #endif
        }
        return try decoder.decode(T.self, from: data)
    }
    
}


extension APIManager{
    enum EndPoint{
        case parkInformation,animalData,plantInformation
        
        var request: URLRequest{
            URLRequest(url: uRL)
        }
        
        var uRL:URL{
            URL(string: ServerIP.ip+description+"&limit=20")!
        }
        
        var description:String{
            switch self {
                
            ///園區資訊
            case .parkInformation:
                return "5a0e5fbb-72f8-41c6-908e-2fb25eff9b8a?scope=resourceAquire"
                
            ///動物資訊
            case .animalData:
                return "a3e2b221-75e0-45c1-8f97-75acbd43d613?scope=resourceAquire"
                
            ///植物資訊
            case .plantInformation:
                return "f18de02f-b6c9-47c0-8cda-50efad621c14?scope=resourceAquire"
            }
        }
    }
}
