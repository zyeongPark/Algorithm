//
//  123.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/18.
//
//주어진 수까지의 합 구하기
import Foundation

var num = Int(readLine()!)!
var result:Int = 0

for i in 1...num{
    result += i
}

print(result)

