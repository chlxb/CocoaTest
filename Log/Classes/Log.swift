//
//  Log.swift
//  Log
//
//  Created by lxb on 2018/6/28.
//  Copyright © 2018年 lxb. All rights reserved.
//

import UIKit
import Alamofire

public enum LogLevel: String {
    case none = "none", warning = "warning", error = "error", verbose = "verbose"
}

public class Log {
    public static var level: LogLevel = .none
    public static func log(_ message: Any, level: LogLevel) {
        guard level != .none else { return }
        if level == self.level {
            print("\(level.rawValue): \(message)")
        }
    }
    
    public static func tokenStatus() {
        Alamofire.request("https://api.ip138.com/status/?token=09243b21ad2e7b91dadb0838e793c129", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                guard let dict = value as? Dictionary<String, Any> else { return }
                log("ret: \(dict)", level: .warning)
            case .failure(let error):
                log("failure: \(error)", level: .warning)
            }
        }
    }
    
    public static func requeestWeather() {
        Alamofire.request("https://api.ip138.com/weather/?code=110105&type=1&token=09243b21ad2e7b91dadb0838e793c129", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                guard let dict = value as? Dictionary<String, Any> else { return }
                if let ret = dict["ret"] as? String {
                    log("ret: \(dict)", level: .warning)
                }
            case .failure(let error):
                log("failure: \(error)", level: .warning)
            }
        }
    }

}
