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
    private var guesses: Array<Character> = []
    
    init() {
        self.init(word: randomWord())
    }
    
    init(word: String) {
        self.word = sanitize(word)
        self.displayWord = Array(count: word.characters.count, repeatedValue: "_")
    }

    public func guess(character: Character) -> Bool {
        // TODO: Implement
        return false
    }
    
    public func isWordFinished() -> Bool {
        return false
    }
    
    public func getWord() -> String {
        return self.word
    }
    
    public func getDisplayWord() -> String {
        return displayWord.joinWithSeparator(" ")
    }
    
    public func getGuesses() -> String {
        var result: String = ""
        self.guesses.forEach({result += String($0) + " "})
        return result
    }
    
    public func isAlreadyGuessed(guess: Character) -> Bool {
        return guesses.contains(guess)
    }
}