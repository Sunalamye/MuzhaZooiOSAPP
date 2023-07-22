//
//  URLSession+.swift
//  NetworkManagerPractice
//
//  Created by Suoie on 2023/7/20.
//

import Foundation

extension URLSession {
//    static var imageSession: URLSession = {
//        let config = URLSessionConfiguration.default
//        config.urlCache = .imageCache
//        return URLSession(configuration: config)
//    }()
}
 

extension URLSession{
    enum APIError: Error{
        case invalidURL
        case invalidCode(Int)
        case invalidData
        
    }
    
    
    func data(for urlRequest:URLRequest)async throws ->Data{
        var urlRequest = urlRequest
        urlRequest.addValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "GET"
        
        if let data = urlRequest.httpBody, let jsonString = String(data: data, encoding: .utf8){
            #if DEBUG
            print("------------Body----------------")
            print(jsonString)
            print("------------Body----------------")
            #endif
            urlRequest.httpBody = data.queryParametersData()
        }
        
        let (data, response) = try await self.data(for: urlRequest)
        guard let response = response as? HTTPURLResponse  else {throw APIError.invalidURL}
        guard 200...299 ~= response.statusCode else{
            assertionFailure(String(data: data, encoding: .utf8) ?? "")
            throw APIError.invalidCode(response.statusCode)
        }
        return data
    }
    
    
}
extension Data{
    func queryParametersData()->Data{
        if let jsonDict = try? JSONSerialization.jsonObject(with: self, options: .mutableContainers) as? [String:Any]
        ,let data = jsonDict.queryParameters.data(using: .utf8){
            return data
        }
        return .init()
    }
}

extension Dictionary {
    var queryParameters: String {
        var parts: [String] = []
        for (key, value) in self {
            let part = String(format: "%@=%@",
                String(describing: key).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!,
                String(describing: value).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)
            parts.append(part as String)
        }
        return parts.joined(separator: "&")
    }
    
}
