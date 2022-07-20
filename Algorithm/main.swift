//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//
import Foundation

var input = Int(readLine()!)!
var inputArr = readLine()!.components(separatedBy: " ")
var res : [Int] = []

for i in inputArr{
    res.append(Int(i)!)
}
print(res.min()!, res.max()!)







