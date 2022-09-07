//
//  printer.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/23.
//

import Foundation
func solution(_ priorities:[Int], _ location:Int) -> Int {

    var pri = priorities
    var sortedPri = [Int]()
    var result = 0
    //인트값 sortedpri에 넣어두기
    for i in 0..<priorities.count {
        sortedPri.append(i)
    }
    
    while !pri.isEmpty == true {
        let priMax = pri.max()!
        let priorCopy = pri.removeFirst() //pricopy는 priorities의 값
        let sort = sortedPri.removeFirst() //sort는 인덱스
        
        if priMax == priorCopy {
            result += 1
            if sort == location {
                break
            }
        }
        
        else {
            pri.append(priorCopy)
            sortedPri.append(sort)
        }
    }
    return result
}

//max는 옵셔널 반환 -> 그래서 기본값 1 또는 강제 언래핑도 가능(맥스값이 있다는 게 보장이 된다면!)
//강제 언래핑이 아닌 경우도 생각하고 있다는 것을 밝히는 용도 
