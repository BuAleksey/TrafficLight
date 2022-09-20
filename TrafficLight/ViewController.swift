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
    
    var currentSignal = Signals.red
    let signalOff: CGFloat = 0.3
    let signalOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        redSignalLabel.alpha = signalOff
        yellowSignalLabel.alpha = signalOff
        greenSignalLabel.alpha = signalOff
        
        startButton.layer.cornerRadius = 20
        startButton.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    override func viewWillLayoutSubviews() {
        redSignalLabel.layer.cornerRadius = redSignalLabel.frame.width/2
        yellowSignalLabel.layer.cornerRadius = yellowSignalLabel.frame.width/2
        greenSignalLabel.layer.cornerRadius = greenSignalLabel.frame.width/2
    }

    @IBAction func startButtonTaped() {
        if startButton.titleLabel?.text == "Start" {
            startButton.setTitle("Next", for: .normal)
        }
        
        switch currentSignal {
        case .red:
            redSignalLabel.alpha = signalOn
            greenSignalLabel.alpha = signalOff
            currentSignal = Signals.yellow
        case .yellow:
            redSignalLabel.alpha = signalOff
            yellowSignalLabel.alpha = signalOn
            currentSignal = Signals.green
        default:
            yellowSignalLabel.alpha = signalOff
            greenSignalLabel.alpha = signalOn
            currentSignal = Signals.red
        }
    }
}

extension ViewController {
    enum Signals {
        case red, yellow, green
    }
}

