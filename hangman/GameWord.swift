//
//  GameWord.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public struct GameWord {
    private let word: String
    private var displayWord: Array<String>
    private var guesses: Array<String> = []
    
    init(word: String) {
        self.word = word
        displayWord = Array(count: word.characters.count, repeatedValue: "_")
    }

    func guess(character: Character) -> Bool {
        // TODO: Implement
        return false
    }
    
    func isWordFinished() -> Bool {
        return false
    }
    
    func getDisplayWord() -> String {
        return displayWord.joinWithSeparator("")
    }
}