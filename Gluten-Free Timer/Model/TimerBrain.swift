//
//  TimerBrain.swift
//  Gluten-Free Timer
//
//  Created by Halil Ibrahim Andic on 13.11.2022.
//

import Foundation

struct TimerBrain {
    let foods = [
        Food(id: "barillaFusilli", name: "Barilla - Fusilli", time: 11),
        Food(id: "scharFusilli", name: "Schar - Fusilli", time: 11),
        Food(id: "scharSphagetti", name: "Schar - Sphagetti", time: 13),
        Food(id: "dececcoPenne", name: "De Cecco - Mezze Penne Rigate N.141", time: 8),
        Food(id: "enerbioKicher", name: "enerBIO - Kichererbsen Spirelli", time: 5),
        Food(id: "enerbioSpirelli", name: "enerBIO - Rote Linsen Spirelli", time: 6),
        Food(id: "lahmacun", name: "Glutensiz Ada - Lahmacun", time: 4),
        Food(id: "pizza", name: "Glutensiz Ada - Pizza", time: 10),
        Food(id: "potato", name: "Fırın Patates", time: 17),
        Food(id: "softEgg", name: "Soft Egg", time: 3),
        Food(id: "mediumEgg", name: "Medium Egg", time: 4),
        Food(id: "hardEgg", name: "Hard Egg", time: 7)]
    
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
