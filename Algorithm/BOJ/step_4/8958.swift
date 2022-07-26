//
//  8958.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/25.
//

import Foundation
var oCount = 0
var realCount = 0
var input = Int(readLine()!)!
for _ in 1...input{
    let quiz = readLine()!
    for x in quiz{
        if x == "O"{
            oCount += 1
            realCount += oCount
        }else{
            oCount = 0
        }
    }
    print(realCount)
    oCount = 0
    realCount = 0
}
