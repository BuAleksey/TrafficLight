//
//  ViewController.swift
//  TrafficLight
//
//  Created by Buba on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignalLabel: UIView!
    @IBOutlet var yellowSignalLabel: UIView!
    @IBOutlet var greenSignalLabel: UIView!
    @IBOutlet var startButton: UIButton!
    var taps = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignalLabel.layer.cornerRadius = 64
        redSignalLabel.alpha = 0.3
        
        yellowSignalLabel.layer.cornerRadius = 64
        yellowSignalLabel.alpha = 0.3
        
        greenSignalLabel.layer.cornerRadius = 64
        greenSignalLabel.alpha = 0.3
        
        startButton.layer.cornerRadius = 20
        startButton.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }

    @IBAction func startButtonTaped() {
        startButton.setTitle("Next", for: .normal)
        
        if taps < 3 {
            taps += 1
        } else {
            taps = 1
        }
        
        if taps == 1 {
            redSignalLabel.alpha = 1
            yellowSignalLabel.alpha = 0.3
            greenSignalLabel.alpha = 0.3
        } else if taps == 2 {
            redSignalLabel.alpha = 0.3
            yellowSignalLabel.alpha = 1
            greenSignalLabel.alpha = 0.3
        } else {
            redSignalLabel.alpha = 0.3
            yellowSignalLabel.alpha = 0.3
            greenSignalLabel.alpha = 1
        }
    }
}

