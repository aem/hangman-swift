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
    
    public func getBoard() -> String {
        return "\(Constants.HANGMAN_BOARD)\n\n\(word.getDisplayWord())"
    }
    
    public func getWord() -> String {
        return self.word.getWord()
    }
    
    public func isGameOver() -> Bool {
        // TODO: Implement
        return false
    }
    
    public func playerWon() -> Bool {
        // TODO: Implement
        return false
    }
}