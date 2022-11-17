//
//  TimerBrain.swift
//  Gluten-Free Timer
//
//  Created by Halil Ibrahim Andic on 13.11.2022.
//

import Foundation

struct TimerBrain {
    let foods = [
        Food(id: "barillaFusilli", name: "Barilla - Fusilli", time: 2),
        Food(id: "scharPenne", name: "Schar - Penne", time: 4),
        Food(id: "arbellaBurgu", name: "Arbella - Burgu", time: 5),
        Food(id: "soft", name: "Soft Egg", time: 1),
        Food(id: "medium", name: "Medium Egg", time: 2),
        Food(id: "hard", name: "Hard Egg", time: 3)]
    
    var foodName: String?
    var foodTime: Int?
    
    mutating func getFoodInfo(id: String) {
        for element in foods {
            if id == element.id {
                foodName = element.name
                foodTime = element.time
            }
        }
    }
    
    func getFoodName() -> String {
        return foodName ?? "a"
    }
    
    func getFoodTime() -> Int {
        return foodTime ?? 0
    }
    
//    mutating func getCurrentTime() -> Int {
//        var timePassed = 0
//        let totalTime = foodTime
//
//        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
//            print("Timer fired!")
//            timePassed += 1
//
//            if timePassed == totalTime {
//                timer.invalidate()
//                print("Bitti")
//            }
//        }
//        return timePassed
//    }
//
//    func stopTime() {
//        timer.invalidate()
//    }
    
}
