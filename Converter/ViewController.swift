//
//  ViewController.swift
//  Converter
//
//  Created by Harshit Punn on 2023-01-17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ConvertTemp(_ sender: Any) {
        guard let tempString = tempText.text
        else {
            return
        }
        
        if let fahrenheit = Double (tempString) {
            let celsius = (fahrenheit - 32) / 1.8
            let resultText = "Celsius \(celsius)"
            resultLabel.text = resultText
        }
    }
    
}

