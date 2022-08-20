//
//  4673.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/20.
//

import Foundation
//도저히 모르겠어서 구글링함.

var s: Set<Int> = []
for i in 1...10000 {
    s.insert(d(i))
}
for j in 1...10000 {
    if !s.contains(j) { print(j) }
}
func d(_ n:Int) -> Int {
    var sum = n, now = n
    while now != 0 {
        sum += now%10
        now /= 10
    }
    return sum
}

