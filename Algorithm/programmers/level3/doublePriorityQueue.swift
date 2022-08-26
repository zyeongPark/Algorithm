//
//  priorityQueue.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/26.
//

import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    var operater = operations.map {$0.components(separatedBy: " ")}
    
    for operater in operations {
        // 연산
        let oper = operation[0]
        // 숫자 or 최대/최소 지울지 결정
        let num = Int(operater[1])!
        
        switch oper {
        // I일 경우 queue append
        case "I":
            queue.append(num)
        // D일 경우 queue remove
        case "D":
            // 배열에 값이 있을 때만 제거할 수 있음
            if !queue.isEmpty {
                // 최댓값
                if num == 1 {
                    queue.sort {$0 > $1}
                // 최솟값
                } else {
                    queue.sort {$0 < $1}
                }
                queue.removeFirst()
            }
        default:
            break
        }
    }
    return queue == [] ? [0,0] : [queue.max()!, queue.min()!]
}

