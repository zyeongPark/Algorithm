//
//  844.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/11.
//

import Foundation

//atoi itoa 이거 먼저 연습해보고 풀면 좀 더 쉬울듯! (문자열->정수형 && 정수형-> 문자열 처리하는 함수 만들기)
//시간 좀 걸렸지만 혼자 해결했다
class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool{
        return result(s) == result(t)
    }
    private func result(_ s: String) -> String {
        var newS = ""
        for x in s{
            if x != "#"{
                newS += String(x) //지금 x는 char인거 조심!
            }else{
                newS.popLast()
            }
        }
        return newS
    }
}
