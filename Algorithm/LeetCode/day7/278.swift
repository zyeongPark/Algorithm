//
//  278.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/02.
//

import Foundation
/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        //시작, 끝 잡아주고
        var start = 0
        var end = n
        //반복문으로 구현한다.
        while start < end{
            let mid = (start + end) / 2
            //만약에 isBadVersion에 mid 가 없다면,
            if !isBadVersion(mid){
                //시작은 mid+1 로 바꿔준다.
                start = mid + 1
            } else{
                //아니라면 끝점은 mid
                end = mid
            }
        }
        //bad 중 가장 처음을 리턴해야 하므로 start 리턴
        return start
    }
}
