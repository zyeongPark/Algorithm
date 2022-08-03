//
//  greedy.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/02.
//

import Foundation

////런타임 에러 난 내 코드
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        var profit = 0
//        for i in 0..<prices.count-1{
//            for j in i+1..<prices.count{
//                if prices[j] - prices[i] > profit{
//                    profit = prices[j] - prices[i]
//                }
//            }
//        }
//        return profit
//    }
//}


