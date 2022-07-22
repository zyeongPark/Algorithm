//
//  2562.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/22.
//
import Foundation
var res:[Int] = []

for _ in 1..<10{
    var input = Int(readLine()!)!
    res.append(input)
}
let max_index = res.index(of: res.max()!)!
print(res.max()!)
print(max_index+1)
