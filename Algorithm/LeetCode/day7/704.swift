//
//  704.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/02.
//

import Foundation
class Solution {
    //문제에서 주어진 시간복잡도가 logn 이니까 꼭 이진탐색으로 풀어야 한다.
    func search(_ nums: [Int], _ target: Int) -> Int {
        //시작점, 끝점 인덱스 잡아주고
        var start = 0
        var end = (nums.count - 1)
        //반복문으로 구현할건데,
        while start <= end {
            //미들값 인덱스는 늘 스타트랑 엔드의 중간값
            let mid = (start + end) / 2
            //만약, 타겟이 미들값과 같다면,
            if nums[mid] == target {
                //타겟의 인덱스 잡아주고
                let resIdx = nums.firstIndex(of: target)
                //인덱스 인트값으로 언래핑 해서 리턴해준다.
                return resIdx!
            }
            //만약에 미들값이 타겟보다 크다면,
            if nums[mid] > target {
                //끝점을 미들값-1 로 바꿔서 더 작은 범위에서 이진탐색 돌 수 있게 한다.
                end = mid - 1
            }
            //만약에 미들값이 타겟보다 작다면,
            else {
                //시작점을 미들값+1로 바꿔서 더 큰 범위에서 이진탐색 돌 수 있게 한다.
                start = mid + 1
            }
        }
        //아무데도 타겟이 없다면 그냥 -1 반환
        return -1
    }
}
