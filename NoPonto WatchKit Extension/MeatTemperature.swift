//
//  MeatTemperature.swift
//  NoPonto WatchKit Extension
//
//  Created by Usuário Convidado on 10/12/22.
//

import Foundation

enum MeatTemperature: Int {
    case rare = 0
    case mediumRare = 1
    case medium = 2
    case wellDone = 3
    
    var stringValue: String {
        let temperatures = ["Cru", "Mal passado", "Ao ponto", "Bem passado"]
        return temperatures[self.rawValue]
    }
    
    var timeModifier: Double {
        let modifiers = [0.5, 0.75, 1.0, 1.5]
        return modifiers[self.rawValue]
    }
    
    func cookTimeForKg(_ kg: Double) -> TimeInterval {
        let baseTime: TimeInterval = 60 * 1.3
        let baseWeight = 0.5
        let weightModifier = kg/baseWeight
        return baseTime * weightModifier * self.timeModifier
    }
}
