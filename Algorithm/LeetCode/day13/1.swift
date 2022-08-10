//
//  new.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/09.
//

import Foundation
//생각나는 대로 짠 코드: 2중 for문 -> 시간복잡도: o(n2)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i,j]
                }
            }
        }
        return []
    }
}

//딕셔너리 사용 코드 (참고 링크 확인) -> 시간복잡도: o(n)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var dics = [Int:Int]()

    for i in 0..<nums.count {
        dics[nums[i]] = i
    }

    for j in 0..<nums.count {
        let complement = target - nums[j] // 보수 구하기
                //보수는 보충해주는 수 (예를 들어 10을 만든다고 할 때 1의 보수는 9)
        let cIdx = dics[complement] //보수에 해당하는 nums의 인덱스값 가져오기
        if cIdx != nil && cIdx != j { return [cIdx!, j]}
    }
    return []
}
