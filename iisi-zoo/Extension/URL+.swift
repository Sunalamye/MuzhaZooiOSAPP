//
//  URL+.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/6/13.
//


import Foundation

extension URL: ExpressibleByStringLiteral {
    public init(stringLiteral value: StaticString) {
        self.init(string: value.description)!
    }
}

