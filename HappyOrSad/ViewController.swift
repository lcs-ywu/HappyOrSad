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
    
    var happyScore = 0
    var sadScore = 0
    
    
    // MARK: Methods
    // This method runs once when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func analyzeMood(_ sender: Any) {
        
        
        
        
    }
    
}

