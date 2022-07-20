//
//  10430.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//

import Foundation

var input = readLine()!
var inputArr = input.components(separatedBy: " ")

let A = Int(inputArr[0])!
let B = Int(inputArr[1])!
let C = Int(inputArr[2])!

print( (A+B)%C )
print( ((A%C) + (B%C))%C )
print( (A*B)%C )
print( ((A%C) * (B%C))%C )
