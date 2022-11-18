//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//
// 4673, 10951, 2439번

import Foundation
//programmars - 괄호변환
var input = readLine()!
//var right = []
//var left = []

for x in input{
    if x == "("{
        right.append(x)
    }else{
        left.append(x)
    }
}

print(right)
pring(left)

