//
//  wordConversion.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/26.
//

import Foundation
func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    // 원소 방문 여부 체크할 배열
    var visited = Array(repeating: false, count: words.count)
    // 최종 step 수 <= 배열 크기
    var step = Int.max
    
    func dfs(_ start: String, _ depth: Int) {
        // 현재 원소가 목표 원소면 종료
        if start == target {
            // 현재 경로와 이전 경로 중 최솟값 저장
            print(visited) //visited 출력
            step = min(step, depth)
            return
        }
        
        // 매 원소를 돌며 다음에 올 수를 찾기
        for i in 0..<words.count {
            // 방문하지 않았고, 1개 문자만 차이난다면
            if !visited[i] && Res(start,words[i]) == 1 {
                // 방문 체크 해주고
                visited[i] = true
                // 다음 원소로 이동하면서, depth + 1
                dfs(words[i],depth + 1)
                // 탐색 끝: 재귀 종료 후 가장 마지막 원소 방문기록 되돌리기
                visited[i] = false
            }
        }
    }
    dfs(begin,0)
    return step == Int.max ? 0 : step
}

func Res(_ a: String, _ b: String) -> Int {
    // 총 길이
    var count = a.count
    for (n,m) in zip(a,b) {
        // 같으면 -1
        // count에 남는 수 만큼 문자가 다름
        if n == m {
            count -= 1
        }
    }
    return count
}

