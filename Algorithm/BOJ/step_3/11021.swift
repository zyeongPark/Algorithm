//
//  11021.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/20.
//
//case 번호까지 함께 출력하기
import Foundation

var input = Int(readLine()!)!
var inputArr : [Int] = []
var result : Int = 0

for _ in 1...input{
    let rInput = readLine()!.components(separatedBy: " ")
    result = Int(rInput[0])! + Int(rInput[1])!
    inputArr.append(result)
}

for i in 0..<input{
    print("Case #\(i+1): \(inputArr[i])")
}
