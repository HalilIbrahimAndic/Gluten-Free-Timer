//
//  SecondViewController.swift
//  Gluten-Free Timer
//
//  Created by Halil Ibrahim Andic on 13.11.2022.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer!

class SecondViewController: UIViewController {

    var choiceName: String?
    var choiceTime: Int?
    
    var timer = Timer()
    
    
    @IBOutlet weak var choiceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var barProgress: UIProgressView!
    @IBOutlet weak var totalTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choiceLabel.text = choiceName
        timeLabel.text = ""
        totalTimeLabel.text = "\(choiceTime!) min"
        barProgress.progress = 0.0
        
        //Calls update timer function when start
        updateTime(totalTime: (choiceTime!)*10)
    }
    
    //Updates the time
    func updateTime (totalTime: Int) {
        var currentTime = totalTime - 1
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
        
                if currentTime == 0 { //Sure dolunca olacaklar
                    self.timeLabel.text = "Time is up!"
                    self.barProgress.progress = 1.0
                    
                    timer.invalidate()
                    self.playSound()
                    
                } else { // Geri sayim devam ederken olacaklar
                    self.timeLabel.text = "\(currentTime / 60):\(currentTime % 60)"
                    let progressRatio = 1.0 - (Float(currentTime) / Float(totalTime))
                    self.barProgress.progress = progressRatio
                    
                }
                
            currentTime -= 1
        }
    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else { print("otmedim")
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func cancelPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        timer.invalidate()
    }
    
}
