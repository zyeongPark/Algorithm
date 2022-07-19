//
//  8393.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/19.
//

//주어진 수까지의 합 구하기
import Foundation

var num = Int(readLine()!)!
var result = 0

for i in 1...num{
    result += i
}

print(result)

