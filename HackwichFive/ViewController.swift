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
    
    //Create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderHasMoved(_ sender: Any) {
    
        currentValue = lroundf(slider.value)
        print("The value of the slider is:\(slider.value)")
        
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
    
    //5. New variable message that displays a message that includes currentValue
        let message = "The value is: \(currentValue)"
        
    //1. Create alert view
        let alert = UIAlertController(title:"Hello World!", message: message, preferredStyle: .alert)
        
    //2. button that user taps to dismiss view controller
        let action =  UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
    //3. Add the button to the alertview
        alert.addAction(action)
        
    //4. Present alertview on the screen
        present(alert, animated: true, completion: nil)
        
  }
    
}

