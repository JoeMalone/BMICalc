//
//  ViewController.swift
//  BMICalc
//
//  Created by Jonas Elholm on 28/08/2017.
//  Copyright © 2017 ButlerStar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weightText: UITextField!
    
    
    @IBOutlet weak var heightText: UITextField!

    @IBOutlet weak var BmiLabel: UILabel!
   
    @IBOutlet weak var yourStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        print("pressed")
        print("\(weightText.text!)")
        print(heightText.text!)
        
        if let height = Double(heightText.text!) {
            if let weight = Double(weightText.text!) {
                let bmiValue = weight / (height * height)
                
          
                var interpretation = ""
                
                
                
                if bmiValue > 25 {
                    
                    interpretation = "You are overweight"
                    
                } else if bmiValue > 18.5 {
                    interpretation = "You have a normal weight"
                    
                } else  {
                    
                    interpretation = "You are underweight"
                }
               
                print(bmiValue)
                
                BmiLabel.text = String(Int(bmiValue))
                
                print(interpretation)
                yourStatus.text = String(interpretation)
                
                
                
                
            } else {
                let alertController = UIAlertController(title: "Error", message: "Invalid weight entry", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(OKAction)
                self.present(alertController, animated: true, completion: nil)
                weightText.text=""
            }
        } else {
            let alertController = UIAlertController(title: "Error", message: "Invalid height entry", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
            heightText.text=""
     
            
        
        
    }
    }

}

