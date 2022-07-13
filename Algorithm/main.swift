//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//

import Foundation

var dice = readLine()!.components(separatedBy: " ")
var result = 0
var diceArr :[Int] = []
for i in 0..<3{
    diceArr.append(Int(dice[i])!)
}

