//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 3/7/19.
//  Copyright © 2019 Kaitlin Kau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    
    @IBOutlet var targetLabel: UILabel!
    
    //Create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    //Create a variable to hold the target value
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentValue = lroundf(slider.value)
        
        //Set targetValue to a randomly generated number that the acr4random_uniform function
        //Removed after typing line 54: targetValue = 1 + Int(arc4random_uniform(100))
        
        //call startNewRound
        startNewRound()
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
    
        currentValue = lroundf(slider.value)
        print("The value of the slider is:\(slider.value)")
        
    }
        
        func startNewRound() {
            
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
            
        updateTargetLabel()
            
        }
    
    func updateTargetLabel() {
        
        targetLabel.text = String(targetValue)
        
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
    
    //5. New variable message that displays a message that includes currentValue
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
    //1. Create alert view
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)
        
    //2. button that user taps to dismiss view controller
        let action =  UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
    //3. Add the button to the alertview
        alert.addAction(action)
        
    //4. Present alertview on the screen
        present(alert, animated: true, completion: nil)
        
    startNewRound()
        
  }
    
}

