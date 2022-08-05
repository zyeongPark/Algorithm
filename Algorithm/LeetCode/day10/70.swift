//
//  70.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/05.
//

import Foundation
//런타임 오버
class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 1{
            return 1
        }else if n==2{
            return 2
        }else{
            return climbStairs(n-1) + climbStairs(n-2)
        }
    }
}

//최종 정답 코드 -> 메모이제이션 사용
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var dp:[Int] = [0,1,2]
        
        for i in 3...45{
            dp.append(dp[i-1] + dp[i-2])
        }
        
        return dp[n]
    }
}


