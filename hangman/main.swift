//
//  main.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

func main() -> Int {
    while true {
        var controller = GameController()
        
        controller.play()
        
        print("Would you like to play again? (y/n)")
        var answer = InputCollector.getInputCharacter()
        while !Input.isValid(String(answer)) {
            print("Please choose 'y' or 'n'")
            answer = InputCollector.getInputCharacter()
        }
        
        if Input.isNo(String(answer)) {
            print("Thanks for playing!")
            break
        }
    }
    
    
    return 0
}

main()