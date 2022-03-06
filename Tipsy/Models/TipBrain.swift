//
//  TipBrain.swift
//  Tipsy
//
//  Created by Sheng hao Dong on 3/6/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import SwiftUI

struct TipBrain {
    var totalBill = "0.00"
    var tipAmount = "0%"
    var amountPeople : String?
    
    mutating func calcSplit() -> String
    {
        let total = Float(totalBill) ?? 0.00
        let people = Float(amountPeople!)!
        
        let tipNumeric = String(tipAmount.dropLast(1))
        let tip = Float(tipNumeric)! / 100
        
        let split = total * (1 + tip) / people
        let roundSplit = round(split * 100) / 100.0
        
        let stringRoundSplit = String(roundSplit)
        return stringRoundSplit
    }
    
    func getTip() -> Int
    {
        return Int(tipAmount) ?? 0
    }
    
    func getPeople() -> Int
    {
        return Int(amountPeople!)!
    }
}
