//
//  1546.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/23.
//

import Foundation

let num = Int(readLine()!)!
let score = readLine()!.split(separator: " ").map{Float(String($0))!}
var newScore : Float = 0

for x in score{
    newScore += x / score.max()! * 100
}
print(newScore/Float(num))
