//
//  1408.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/27.
//

import Foundation
//합 구하기
class Solution {
    var result: Int = 0
    var resultArr: [Int] = []
    func runningSum(_ nums: [Int]) -> [Int] {
        for x in nums{
            result += x
            resultArr.append(result)
        }
        return resultArr
    }
}
