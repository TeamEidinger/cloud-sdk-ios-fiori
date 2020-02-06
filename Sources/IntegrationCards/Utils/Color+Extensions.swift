//
//  Color+Extensions.swift
//  DevTest
//
//  Created by Ma, Xiao on 2/3/20.
//  Copyright © 2020 sstadelman. All rights reserved.
//

import SwiftUI

enum StatusState: String {
    case waring     = "Warning"
    case error      = "Error"
    case success    = "Success"
}

extension Color {
    static func forStatus(status: String?) -> Color {
        guard let statusString = status else {
            return Color.black
        }
        let _status = StatusState(rawValue: statusString)
        switch _status {
        case .error:
            return Color.red
        case .success:
            return Color.green
        case .waring:
            return Color.orange
        case .none:
            return Color.black
        }
    }
}