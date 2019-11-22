//
//  ViewController.swift
//  HappyOrSad
//
//  Created by James Wu on 2019-11-18.
//  Copyright © 2019 James Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    // Outlets, constants, and variables defined here will be available for use anywhere below.
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var analyzeResult: UILabel!
    
    
    
    
    // MARK: Methods
    // This method runs once when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func analyzeMood(_ sender: Any) {
        
        //clear out the output label from tge last time the analyze button was pressed
        analyzeResult.text = ""
        
        guard let userInputAsString = userInput.text,
                    userInputAsString.count > 0,
                    userInputAsString.count <= 255 else {
            analyzeResult.text = "Please enter a string with at least 1 and no more than 255 characters."
            return
        }
        var happyScore = 0
        var sadScore = 0
        
        
        for eachScalar in userInputAsString.unicodeScalars {
            let scalarValues = eachScalar.value
            
            switch scalarValues {
            case 128515:
                happyScore += 1
            case 128522:
                happyScore += 1
            case 128516:
                happyScore += 1
            case 128578:
                happyScore += 1
            case 9785:
                sadScore += 1
            case 128533:
                sadScore += 1
            case 128577:
                sadScore += 1
            case 128532:
                sadScore += 1
            default:
                happyScore += 0
            }
        
            
        }
        
        if happyScore == sadScore && happyScore != 0 && sadScore != 0 {
            analyzeResult.text = "unsure"
        }else if happyScore > sadScore{
            analyzeResult.text = "You are happy"
        }else if happyScore < sadScore{
            analyzeResult.text = "You are sad"
        }else if happyScore == 0 && sadScore == 0{
            analyzeResult.text = "None"
        }
    
        
    }
    


}
