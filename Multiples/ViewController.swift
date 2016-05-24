//
//  ViewController.swift
//  Multiples
//
//  Created by Zach Mcmillan-Clenaghan on 24/05/2016.
//  Copyright © 2016 ClenTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var mathLabel: UILabel!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var userEntry: UITextField!
    @IBOutlet weak var logoImage: UIImageView!
    
    
    let maxNumber = 100
    
    var userInput = 0
    var startValue = 0
    
    
    @IBAction func onPlayPressed(sender: UIButton) {
        if userEntry.text != nil && userEntry.text != "" {
            playButton.hidden = true
            userEntry.hidden = true
            logoImage.hidden = true
            
            addButton.hidden = false
            mathLabel.hidden = false
            
            userInput = Int(userEntry.text!)!
            
        }
    }
    
    
    @IBAction func onAddPressed(sender: UIButton) {
        mathLabel.text = "\(startValue) + \(userInput) = \(startValue + userInput)"
        startValue += userInput
        
        testForRestart()
    }

    func testForRestart() {
        if startValue >= maxNumber {
            startValue = 0
            userInput = 0
            
            playButton.hidden = false
            userEntry.hidden = false
            logoImage.hidden = false
            
            addButton.hidden = true
            mathLabel.hidden = true
            
            userEntry.text = ""
            mathLabel.text = "Press Add to add!"
            
        }
    }
    
}

