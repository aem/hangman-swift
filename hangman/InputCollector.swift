//
//  InputCollector.swift
//  hangman
//
//  Created by Adam Markon on 8/26/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public struct InputCollector {
    private static func _getInput() -> String! {
        let input: String! = readLine()
        if input.characters.count <= 0 {
            print("ERROR: Must input some text")
            return ""
        }
        return input
    }
    
    public static func getInputCharacter() -> String {
        let input: String! = _getInput()
        if let result: Character = input.characters.first {
            return String(result)
        }
        return ""
    }
    
    public static func getInputWord() -> String {
        let input: String! = _getInput()
        if let result: Array<String> = input.componentsSeparatedByString(" ") {
            return result[0]
        }
        return ""
    }
}