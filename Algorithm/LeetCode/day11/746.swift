//
//  746.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/07.
//

import Foundation
class Easy746: NSObject {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp1 = 0
        var dp2 = 0
        var t = 0
        for i in 2...cost.count {
            t =  min(dp2 + cost[i-1], dp1 + cost[i-2])
            dp1 = dp2
            dp2 = t
        }
        
        return dp2
    }
}
