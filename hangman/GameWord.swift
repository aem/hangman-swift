//
//  GameWord.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

func randomWord() -> String {
    return "poop"
}

func sanitize(word: String) -> String {
    return word.componentsSeparatedByCharactersInSet(
        NSCharacterSet.alphanumericCharacterSet()).joinWithSeparator("").lowercaseString
}

public struct GameWord {
    private let word: String
    private var displayWord: Array<String>
    private var guesses: Array<String> = []
    
    init() {
        self.init(word: randomWord())
    }
    
    init(word: String) {
        self.word = sanitize(word)
        self.displayWord = Array(count: word.characters.count, repeatedValue: "_")
    }

    func guess(character: Character) -> Bool {
        // TODO: Implement
        return false
    }
    
    func isWordFinished() -> Bool {
        return false
    }
    
    func getDisplayWord() -> String {
        return displayWord.joinWithSeparator(" ")
    }
}