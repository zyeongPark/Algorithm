//
//  minSquare.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/31.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var size = sizes
    var garo: [Int] = []
    var sero: [Int] = []
    for i in 0..<size.count{
        size[i].sort()
        garo.append(size[i][0])
        sero.append(size[i][1])
    }
    // print(x)
    // print(y)
    return garo.max()! * sero.max()! //옵셔널조심
}
