//
//  ViewController.swift
//  traffic Light
//
//  Created by MacBook Pro on 19.05.2020.
//  Copyright © 2020 Artem K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 15
        redLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
    var zeroLight: Float = 1.0
    @IBAction func nextButtonPressed() {
        //switch zeroLight {
        //case redLight.alpha: redLight.alpha
        
        if (redLight.alpha < 1 && yellowLight.alpha < 1) && greenLight.alpha < 1 {
            redLight.alpha = 1
            nextButton.setTitle("Next", for: .normal)
        } else if (redLight.alpha == 1 && yellowLight.alpha < 1) && greenLight.alpha < 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else if (redLight.alpha < 1 && yellowLight.alpha == 1) && greenLight.alpha < 1 {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
        } else if (redLight.alpha < 1 && yellowLight.alpha < 1) && greenLight.alpha == 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
        } else {
            print("Светофор поломан)")
        }
    }
}
