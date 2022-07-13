//
//  2588.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//

import Foundation

var num1 = Int(readLine()!)!
var num2 = Int(readLine()!)!

var three: Int = num1 * (num2 % 10)
var four: Int = num1 * ((num2 % 100)/10)
var five: Int = num1 * (num2 / 100)

print(three)
print(four)
print(five)
print(num1 * num2)

