//
//  GameBoard.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public struct GameBoard {
    private var word: GameWord
    private let boards = [HangmanBoards.HANGMAN_BOARD_0,
        HangmanBoards.HANGMAN_BOARD_1,
        HangmanBoards.HANGMAN_BOARD_2,
        HangmanBoards.HANGMAN_BOARD_3,
        HangmanBoards.HANGMAN_BOARD_4,
        HangmanBoards.HANGMAN_BOARD_5,
        HangmanBoards.HANGMAN_BOARD_6,
        HangmanBoards.HANGMAN_BOARD_7]
    
    init() {
        self.word = GameWord()
    }
    
    init(customWord: String) {
        self.word = GameWord(word: customWord)
    }
    
    public func getBoard() -> String {
        return "\(self.boards[self.word.getGuessCount()].rawValue)\n\nWord: \(word.getDisplayWord())\n\nGuesses: \(word.getGuesses())"
    }
    
    public func getWord() -> String {
        return self.word.getWord()
    }
    
    public func isGameOver() -> Bool {
        return self.word.isWordFinished() || self.word.hasTooManyGuesses()
    }
    
    public func playerWon() -> Bool {
        return self.word.isWordFinished() && !self.word.hasTooManyGuesses()
    }
    
    public func isAlreadyGuessed(guess: String) -> Bool {
        return self.word.isAlreadyGuessed(guess)
    }
    
    public mutating func guess(guess: String) -> Bool {
        return self.word.guess(guess)
    }
}