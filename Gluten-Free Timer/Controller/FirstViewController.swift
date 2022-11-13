//
//  ViewController.swift
//  Gluten-Free Timer
//
//  Created by Halil Ibrahim Andic on 11.11.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    var timerBrain = TimerBrain()
    var choiceID = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        choiceID = sender.currentTitle!
        
        //timerbrain'den degerleri burada çekecegiz
        timerBrain.getFoodInfo(id: choiceID)
        
        self.performSegue(withIdentifier: "goToTimer", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToTimer" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.choiceID = choiceID
            
            //yukarıda aldığımız degerleri burada yollıcaz
            destinationVC.choiceName = timerBrain.getFoodName()
            destinationVC.choiceTime = timerBrain.getFoodTime()
        }
        
    }
    
}
