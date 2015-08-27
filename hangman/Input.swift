//
//  Input.swift
//  hangman
//
//  Created by Adam Markon on 8/26/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public enum Input: String {
    case Y = "Y"
    case YES = "YES"
    case N = "N"
    case NO = "NO"
    
    public static func isYes(value: String) -> Bool {
        let val = value.uppercaseString
        return val == Input.Y.rawValue || val == Input.YES.rawValue
    }
    
    public func isYes() -> Bool {
        return self == Input.Y || self == Input.YES
    }
    
    public static func isNo(value: String) -> Bool {
        let val = value.uppercaseString
        return val == Input.N.rawValue || val == Input.NO.rawValue
    }
    
    public func isNo() -> Bool {
        return self == Input.N || self == Input.NO
    }
    
    public static func isValid(value: String) -> Bool {
        return Input.isYes(value) || Input.isNo(value)
    }
}