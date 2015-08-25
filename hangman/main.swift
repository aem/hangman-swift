//
//  main.swift
//  hangman
//
//  Created by Adam Markon on 8/25/15.
//  Copyright © 2015 Markon Development. All rights reserved.
//

import Foundation

func main() -> Int {
    let controller = GameController()
    
    return controller.play()
}