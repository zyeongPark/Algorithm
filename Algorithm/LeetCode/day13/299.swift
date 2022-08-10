//
//  299.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/09.
//

import Foundation
//testcase 중에 "1123" "0111" 만족시키지 못했음(다시 풀어보기)-> 이걸 해결하려면 이중for문 쓰면 안됨
class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var bulls = 0
        var cows = 0
        
        for i in 0..<secret.count{
            var x = secret.prefix(i)
            for j in 0..<guess.count{
                var y = guess.prefix(i)
                if x == y{
                    if i == j{
                        bulls += 1
                    }else{
                        cows += 1
                    }
                }else{
                    continue
                }
            }
        }
        return String(bulls) + "A" + String(cows) + "B"
    }
}
