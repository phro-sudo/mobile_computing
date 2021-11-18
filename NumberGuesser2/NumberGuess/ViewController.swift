//
//  ViewController.swift
//  NumberGuess
//
//  Created by Philiip Rockenschaub on 23.09.21.
//

import UIKit

class ViewController: UIViewController {

    var model = NumberGuessModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.model.target = Int.random(in: 0..<100)
        
        print(target);
    }
    
    @IBAction func onTouchUpInside(_ sender: UIButton) {
        
        self.model.guessCounter += 1
        
        if model.isValid(string: self.GuessTextField.text) {
            
            let compare = model.compare(to: Int(self.GuessTextField.text!)!)
        

            Emoji.image = self.model.getImage(tries: model.guessCounter)
            Emoji.isHidden = compare == 0
            self.StatusLabel.text = self.model.getText(compare: compare)
            
            
            GuessTextField.resignFirstResponder()
            
        }
        
        return;
        
    }
    
    @IBAction func onTextChange(_ sender: UITextField) {
        
        self.GuessButton.isEnabled = model.isValid(string: sender.text)
        
    }
    
    @IBOutlet weak var GuessButton: UIButton!
    @IBOutlet weak var StatusLabel: UILabel!
    @IBOutlet weak var GuessTextField: UITextField!
    @IBOutlet weak var Emoji: UIImageView!
}

    
