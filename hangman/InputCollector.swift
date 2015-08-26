//
//  InputCollector.swift
//  hangman
//
//  Created by Adam Markon on 8/26/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public struct InputCollector {
    public static func getInput() -> Character {
        let input: String! = readLine()
        if input.characters.count > 0 {
            if let result: Character = input.characters.first {
                return result
            }
        }
        return Character("")
    }
}