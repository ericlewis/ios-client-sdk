//
//  Array.swift
//  Darkly_iOS
//
//  Created by Mark Pokorny on 10/26/17. +JMJ
//  Copyright © 2017 LaunchDarkly. All rights reserved.
//

import Foundation

extension Array {
    public func isEqual(to other: [Any]) -> Bool {
        guard self.count == other.count else { return false }
        for index in 0..<self.count where !Array.isEqual(self[index], to: other[index]) { return false }
        return true
    }
}
