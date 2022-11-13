//
//  SecondViewController.swift
//  Gluten-Free Timer
//
//  Created by Halil Ibrahim Andic on 13.11.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var choiceID: String?
    var choiceName: String?
    var choiceTime = 0
    
    @IBOutlet weak var choiceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choiceLabel.text = choiceName
        timeLabel.text = String(choiceTime)
    }
    
//    var timePassed = 0
//
//    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
//        print("Timer fired!")
//        timePassed += 1
//
//        if timePassed == 3 {
//            timer.invalidate()
//        }
//    }
    
    @IBAction func cancelPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        //timer.invalidate()
    }
    
}
