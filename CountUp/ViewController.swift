//
//  ViewController.swift
//  CountUp
//
//  Created by Hiroki Nakashima on 2017/12/16.
//  Copyright © 2017 Hiroki Nakashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var digit: UILabel!
    var number = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        digit.adjustsFontSizeToFitWidth = true
        
    }
    
    func displayNumber() {
        
        digit.text = String(number)
        
        if number < 0 {
            digit.textColor = UIColor.red
        } else {
            digit.textColor = UIColor.black
        }
        
        if number > 30 {
            digit.text = "30を超えました"
        } else if number < -10 {
            digit.text = "-10未満です"
        } else {
            digit.text = String(number)
        }

    }

    
    
    @IBAction func countUp(_ sender: UIButton) {
        
        number += 1
        
        displayNumber()
        
    }
    
    @IBAction func countDown(_ sender: UIButton) {
        
        number -= 1
        
        displayNumber()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
}

