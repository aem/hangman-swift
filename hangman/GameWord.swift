//
//  GameWord.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

func randomWord() -> String {
    return "word"
}

public struct GameWord {
    private let word: Array<Character>
    private var displayWord: Array<String>
    private var guesses: Array<String> = []
    
    init() {
        self.init(word: randomWord())
    }
    
    init(word: String) {
        self.word = Array(word.characters)
        self.displayWord = Array(count: word.characters.count, repeatedValue: "_")
    }

    public mutating func guess(userGuess: String) -> Bool {
        if (userGuess == "") {
            return false
        }
        
        if word.contains(Character(userGuess)) {
            for i in 0..<word.count {
                if String(word[i]) == userGuess {
                    displayWord[i] = userGuess
                }
            }
            return true
        } else {
            guesses.append(userGuess)
            return false
        }
    }
    
    public func isWordFinished() -> Bool {
        return !displayWord.contains("_")
    }
    
    public func getWord() -> String {
        var acc: String = ""
        self.word.forEach(){acc += String($0)}
        return acc
    }
    
    public func getDisplayWord() -> String {
        return displayWord.joinWithSeparator(" ")
    }
    
    public func getGuesses() -> String {
        return self.guesses.joinWithSeparator(" ")
    }
    
    public func getGuessCount() -> Int {
        return self.guesses.count
    }
    
    public func isAlreadyGuessed(guess: String) -> Bool {
        return guesses.contains(guess)
    }
    
    // head, body, 2 arms, 2 legs, face == dead
    public func hasTooManyGuesses() -> Bool {
        return guesses.count >= 7
    }
}
