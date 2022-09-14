//
//  expressByN.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/13.
//

import Foundation

func solution(_ N:Int, _ number:Int) -> Int {
    if N == number {
        return 1
    }
    //count가 8보다 크면 바로 -1 리턴하기용
    var answer: Int = -1
        
    func dfs(_ count: Int, _ now: Int) {
        if count > 8 { return }
        if now == number {
            //현재 숫자인 now와 number가 같다면 종료, 여기서 answer는 count의 최소값으로 업데이트
            if count < answer || answer == -1 {
                answer = count
            }
            return
        }
        
        var n = 0
        for i in 0..<8 {
            if (answer != -1) && (answer < count + 1 + i) {
                break
            }
            //555 -> 5 인 경우 n이 555 -> 55 -> 5 가 될 수 있도록 n*10 +n 진행
            n = (n * 10) + N
            dfs(count + 1 + i, now + n)
            dfs(count + 1 + i, now - n)
            dfs(count + 1 + i, now * n)
            dfs(count + 1 + i, now / n)
        }
    }
    
    dfs(0, 0)
    
    return answer
}
