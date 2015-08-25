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
        self.board = GameBoard()
    }
    
    public func play() -> Int {
        print("Welcome to Hangman!\n")
        print(HANGMAN_BOARD)
        
        return 0
    }
}