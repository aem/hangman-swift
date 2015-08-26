//
//  GameBoard.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public struct GameBoard {
    private let word: GameWord
    
    init() {
        self.word = GameWord()
    }
    
    init(customWord: String) {
        self.word = GameWord(word: customWord)
    }
    
    func printBoard() -> String {
        return "\(HANGMAN_BOARD)\n\n\(word.getDisplayWord())"
    }
}