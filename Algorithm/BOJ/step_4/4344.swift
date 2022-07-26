//
//  4344.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/25.
//

import Foundation
var inputNum = Int(readLine()!)!
for _ in 0..<inputNum{
    var result: Float = 0
    let score = readLine()!.split(separator: " ").map { Float(String($0))! }
    var average: Float = 0
    for x in score[1...]{
        average += x
    }
    average = average/score[0]
    for x in score[1...]{
        if x > average {
            result += 1
        }
    }
    var realResult = String(format: "%.3f", Float(result)/score[0] * 100)
    print(realResult, "%" )
}
