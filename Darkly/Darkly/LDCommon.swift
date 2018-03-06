//
//  LDCommon.swift
//  Darkly
//
//  Created by Mark Pokorny on 8/23/17. +JMJ
//  Copyright © 2017 LaunchDarkly. All rights reserved.
//

import Foundation

public typealias LDFlagChangeOwner = AnyObject
public typealias LDFlagKey = String
typealias UserKey = String
public typealias LDFlagChangeObserver = (LDChangedFlag) -> Void
public typealias LDFlagCollectionChangeObserver = ([String: LDChangedFlag]) -> Void

extension LDFlagKey {
    private static var anyKeyIdentifier: String { return "Darkly.FlagKeyList.Any" }
    static var anyKey: [LDFlagKey] { return [anyKeyIdentifier] }
}

#if DEBUG
var isDebug: Bool { return true }
#else
var isDebug: Bool { return false }
#endif