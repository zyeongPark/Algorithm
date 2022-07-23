//
//  2577.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/22.
//

import Foundation
var res = 1
for _ in 1...3{
    res *= Int(readLine()!)!
}
let inputArr = String(res).map { String($0) }

for i in 0...9{
    var count = 0
    for j in inputArr{
        if String(i) == j{
            count += 1
        }
    }
    print(count)
}
