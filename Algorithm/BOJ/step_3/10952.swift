//
//  10952.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/20.
//
import Foundation

var resArr: [Int] = []

while true{
    var inputArr = readLine()!.components(separatedBy: " ")
    var a = Int(inputArr[0])!
    var b = Int(inputArr[1])!
    resArr.append(a+b)
    if a==0 && b == 0{break}
    else{continue}
}
var lenArr = resArr.count
for i in 0..<lenArr-1{
    print(resArr[i])
}
