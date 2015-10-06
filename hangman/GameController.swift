//
//  GameController.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public struct GameController {
    private var board: GameBoard
    
    init() {
        print("Would you like to enter a custom word for someone else to play? (y/n)")
        var answer = InputCollector.getInputCharacter()
        while !Input.isValid(answer) {
            print("Please choose 'y' or 'n'")
            answer = InputCollector.getInputCharacter()
        }
        
        if Input.isYes(answer) {
            print("Please input the word that you'd like someone else to guess!")
            let word = InputCollector.getInputWord()
            self.board = GameBoard(customWord: word)
        } else {
            print("You're going to be guessing a random word, good luck!")
            self.board = GameBoard()
        }
    }
    
    public mutating func play() {
        print("Welcome to Hangman!\n")
        
        print(board.getBoard())
        
        self.playNextTurn()
    }
    
    private mutating func playNextTurn() {
        self.guess()
        
        print(board.getBoard())
        
        if !board.isGameOver() {
            self.playNextTurn()
        } else {
            if board.playerWon() {
                print("Congratulations! You guessed '\(board.getWord())' correctly!")
                print(HangmanBoards.HAPPY_PERSON.rawValue)
            } else {
                print("Ouch. You couldn't quite save him.")
            }
        }
    }
    
    private mutating func guess() {
        print("Enter your guess: ")
        let guess = InputCollector.getInputCharacter()
        if board.isAlreadyGuessed(guess) {
            print("You've already guessed '\(guess)', please guess again.")
            self.guess()
        } else {
            self.board.guess(guess)
        }
    }
}