//
//  Log.swift
//  Log
//
//  Created by lxb on 2018/6/28.
//  Copyright © 2018年 lxb. All rights reserved.
//

import UIKit

public enum LogLevel: String {
    case none = "none", warning = "warning", error = "error", verbose = "verbose"
}

open class Log {
    public static var level: LogLevel = .none
    public static func log(_ message: String, level: LogLevel) {
        guard level != .none else { return }
        if level == self.level {
            print("\(level.rawValue): \(message)")
        }
    }

}
