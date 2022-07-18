//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//

import Foundation

var num = Int(readLine()!)!
for number in 1...9 {
    for multiple in 1...9 {
        print("\(number) 곱하기 \(multiple)은 \(number*multiple)")
    }
}
