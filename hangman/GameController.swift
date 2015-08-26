//
//  GameController.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public struct GameController {
    private let board: GameBoard
    
    init() {
        print("Would you like to enter a custom word for someone else to play? (y/n)")
        var answer = InputCollector.getInputCharacter()
        while !Y_N_INPUTS.contains(answer) {
            print("Please choose 'y' or 'n'")
            answer = InputCollector.getInputCharacter()
        }
        
        if Y_INPUTS.contains(answer) {
            print("Please input the word that you'd like someone else to guess!")
            let word = InputCollector.getInputWord()
            self.board = GameBoard(customWord: word)
        } else {
            print("You're going to be guessing a random word, good luck!")
            self.board = GameBoard()
        }
    }
    
    public func play() -> Int {
        print("Welcome to Hangman!\n")
        
        print(board.printBoard())
        
        return 0
    }
}