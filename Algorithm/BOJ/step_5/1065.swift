//
//  1065.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/20.
//

import Foundation
var input = Int(readLine()!)!
var result = 0
if input >= 100 && input < 1000{
    result += 99
    for i in 100...input{
        let firstNum = i / 100
        let thirdNum = i % 10
        let secondNum = (i - ((firstNum * 100) + thirdNum)) / 10
        if secondNum * 2 == firstNum + thirdNum{
            result += 1
        }
    }
    print(result)
}else if input == 1000{
    print(144)
}else{
    print(input)
}
