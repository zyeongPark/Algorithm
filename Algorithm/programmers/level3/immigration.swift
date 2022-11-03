//
//  immigration.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/28.
//

import Foundation
//이분 탐색(binary search) + 매개변수 탐색(parametric search)

import Foundation
func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var result : Int64 = 0
    var lo : Int64 = 1
    var hi = Int64(times.max()!) * Int64(n)
    while lo <= hi {
        let mid = (lo + hi) / 2
        var people : Int64 = 0
        for i in times {
            people += mid/Int64(i)
        }
        if(people >= n) {
            result = mid
            hi = mid - 1
        } else { // 그렇지 않다면 ~
            lo = mid + 1
        }
    }
    
    return result
}
