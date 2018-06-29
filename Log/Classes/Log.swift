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
    
    public static func request() {
        Alamofire.request("http://www.baidu.com", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (request) in
            log(request, level: .warning)
        }
    }

}
