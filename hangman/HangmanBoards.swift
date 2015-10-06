//
//  HangmanBoards.swift
//  hangman
//
//  Created by Adam Markon on 8/27/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

public enum HangmanBoards: String {
    case HANGMAN_BOARD_0 = "   ------------- \n   |           | \n               | \n               | \n               | \n               | \n               | \n               | \n               | \n               | \n   ____________|_"
    
    case HANGMAN_BOARD_1 = "   ------------- \n   |           | \n  ___          | \n |   |         | \n |   |         | \n  ---          | \n               | \n               | \n               | \n               | \n   ____________|_"
    
    case HANGMAN_BOARD_2 = "   ------------- \n   |           | \n  ___          | \n |   |         | \n |   |         | \n  ---          | \n   |           | \n   |           | \n   |           | \n               | \n   ____________|_"
    
    case HANGMAN_BOARD_3 = "   ------------- \n   |           | \n  ___          | \n |   |         | \n |   |         | \n  ---          | \n   |           | \n  \\|           | \n   |           | \n               | \n   ____________|_"
    
    case HANGMAN_BOARD_4 = "   ------------- \n   |           | \n  ___          | \n |   |         | \n |   |         | \n  ---          | \n   |           | \n  \\|/          | \n   |           | \n               | \n   ____________|_"
    
    case HANGMAN_BOARD_5 = "   ------------- \n   |           | \n  ___          | \n |   |         | \n |   |         | \n  ---          | \n   |           | \n  \\|/          | \n   |           | \n  /            | \n   ____________|_"
    
    case HANGMAN_BOARD_6 = "   ------------- \n   |           | \n  ___          | \n |   |         | \n |   |         | \n  ---          | \n   |           | \n  \\|/          | \n   |           | \n  / \\          | \n   ____________|_"
    
    case HANGMAN_BOARD_7 = "   ------------- \n   |           | \n  ___          | \n |x x|         | \n | _ |         | \n  ---          | \n   |           | \n  \\|/          | \n   |           | \n  / \\          | \n   ____________|_"
    
    case HAPPY_PERSON = " ___ \n|. .|\n| U |\n ___ \n  |  \n \\|/ \n  |  \n  |  \n / \\ "
}