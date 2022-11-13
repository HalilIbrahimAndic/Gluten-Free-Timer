//
//  ViewController.swift
//  Gluten-Free Timer
//
//  Created by Halil Ibrahim Andic on 11.11.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        let secondVC = SecondViewController()
        secondVC.choiceName = sender.currentTitle!
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    //
    
}
