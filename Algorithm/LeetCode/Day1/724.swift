//
//  724.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/27.
//

import Foundation
//피벗 인덱스 구하기
class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var answer = -1 //기본은 -1

        for x in 0..<nums.count {
            let idx = nums.index(nums.startIndex, offsetBy: x) //offset만큼 떨어짐
            //배열 만들어 놓고
            let leftArr = nums[nums.startIndex..<idx]
            let rightArr = nums[nums.index(after: idx)..<nums.endIndex]
            print(leftArr)
            print("?",rightArr)
            
            //현재 인덱스까지 왼,오 배열 속 원소 합 구한 다음
            var leftSum = 0
            leftArr.map { leftSum += $0 }
            var rightSum = 0
            rightArr.map { rightSum += $0 }
            
            //같으면 인덱스 추출
            if leftSum == rightSum {
                answer = x
                break
            }
        }

        return answer
    }
}
