//
//  String+Regex.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/6/19.
//

import Foundation

enum RegexString{
    case input(String)
    case phone
    
    var regex:String{
        switch self {
        case .phone:return "09\\d{2}(\\d{6}|-\\d{3}-\\d{3})"
        case .input(let str):return str
        }
    }
}

extension String {
    func matches(regex: RegexString = .input("")) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES[c] %@", regex.regex)
        return predicate.evaluate(with: self)
    }
    
    mutating func replace(regex: String, content: String) {
        do {
            let RE = try NSRegularExpression(pattern: regex, options: .caseInsensitive)
            self = RE.stringByReplacingMatches(in: self,
                                               options: .reportProgress,
                                               range: NSRange(location: 0, length: self.count),
                                               withTemplate: content)
        } catch {
            print("正則匹配錯誤")
        }
    }
    
}


extension String{

    
    var CnEgMath: String {
        var oldStr = self
        oldStr.replace(regex: "[^0-9A-Za-z\\u4E00-\\u9FA5\\u3100-\\u31BF\\u02D9\\u02CA\\u02C7\\u02CB]", content: "")
        return oldStr
    }

    var numberAndDot: String {
        var oldStr = self
        oldStr.replace(regex: "[^0-9\\u002e]", content: "")
        return oldStr
    }
    
    var correctedTaiwanPhoneNumber: String {
        var oldStr = self
        oldStr.replace(regex: "\\D", content: "")
        switch oldStr.count {
        case 0:
            return oldStr
        case 1:
            return "0"
        case 2:
            return "09"
        default:
            if !oldStr.hasPrefix("09") {
                oldStr = "09" + oldStr
            }
            return String(oldStr.prefix(10))
        }
    }

}
