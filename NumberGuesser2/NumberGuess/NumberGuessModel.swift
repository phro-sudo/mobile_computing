//
//  NumberGuessModel.swift
//  NumberGuess
//
//  Created by Philiip Rockenschaub on 21.10.21.
//

import Foundation
import UIKit

class NumberGuessModel {
    
    var guesses = [Int]()
    var target = 0
    var guessCounter = 0
    
    func compare(to: Int) -> Int {
        
        return to - target;
        
    }
    
    func isValid(string: String?) -> Bool {
        var isValid = false
        if let str = string, let guess = Int(str) {
            if guess >= 1 && guess <= 99 {
                isValid = true
            }
        }
        return isValid
    }
    
    func getImage(tries: Int) -> UIImage {
        
        var image: UIImage?
        switch tries {
            
        case 1...5:
            image = UIImage(named: "kissing-cat_1f63d")
        case 5...7:
            image = UIImage(named: "cat-face_1f431")
        case 7...10:
            image = UIImage(named:"crying-cat_1f63f")
        default:
            image = UIImage(named:"weary-cat_1f640")
        }
        
        return image!
    }
    
    func getText(compare: Int) -> String {
        
        var text = ""
        
        switch (compare) {
        case -100..<0:
            text = "The number is lower than the target!"
        case 0:
            text = "You got the number correct!"
        default:
            text = "The number is higher than the targer!"
        }
        
        return text
        
    }
    
    func addGuess(guess: Int) -> Void {
        
        guesses.append(guess);
    
    }
    
}
