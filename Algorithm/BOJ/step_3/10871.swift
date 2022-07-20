//
//  10871.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/20.
//
//x보다 작은수
import Foundation

var input = readLine()!.components(separatedBy: " ")
var inputArr = readLine()!.components(separatedBy: " ")
let n = Int(input[0])!
let x = Int(input[1])!

for i in 0..<n{
    var num = Int(inputArr[i])!
    if num < x{
        print(num)
    }else {continue}
}
