//
//  news.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//

import Foundation

var input = readLine()!
var inputArr = input.components(separatedBy: " ")

var a = Int(inputArr[0])!
var b = Int(inputArr[1])!

if a > b {
    print(">")
}else if a < b {
    print("<")
}else {
    print("==")
}
