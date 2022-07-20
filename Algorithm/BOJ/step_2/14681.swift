//
//  14681.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/14.
//

import Foundation

var num1 = Int(readLine()!)!
var num2 = Int(readLine()!)!

if (num1>0) && (num2>0) {
    print(1)
} else if (num1<0) && (num2>0) {
    print(2)
}else if (num1<0) && (num2<0) {
    print(3)
}else{print(4)}
