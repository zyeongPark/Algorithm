//
//  1046.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/12.
//

import Foundation
class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        //내림차순 정렬
        var newStones:[Int] = stones.sorted(by:>)
        if stones.count == 0 {return 0}
        else if stones.count == 1 {return stones[0]}
        else{
            //돌 개수가 1개 이상인 경우에만 반복
            while newStones.count > 1 {
                let num1 = Int(newStones.popLast()!)
                let num2 = Int(newStones.popLast()!)
                //이부분 오류 해결 중,, -> 해결완(popLast는 옵셔널 반환!!!!)
                if (num1-num2) != 0 {
                    newStones.append(Int(num1-num2))
                    newStones.sort(by:>)
                }
            }
            return newStones[0]
        }
    }
}

