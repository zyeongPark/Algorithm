//
//  featureDevelop.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/21.
//

import Foundation
//5:40 ~ 6:15 (25분 걸림)
func solution(_ progress:[Int], _ speeds:[Int]) -> [Int] {
    var left_progress: [Int] = []
    var day:[Int] = []
    var result:[Int] = []
    //남은 작업 퍼센테이지 left_progress에 저장
    for x in progress{
        left_progress.append(100-x)
    }
    //남은 작업량을 스피드로 나눠서 배포 가능한 기간 day에 저장
    for i in 0..<speeds.count{
        let l = left_progress[i] //subscript 사용(왜냐면 nil값이 없음)
        let s = speeds[i]
        let master = l % s
        if master == 0 {
            day.append(l/s)
        }else{
           day.append((l/s) + 1 )
        }
    }
    //메인 로직에서 막힘
    for i in 0..<day.count{
        var count = 1
        for j in 1..<day.count{
            if day[i] > day[i+j]{
                count += 1
            }else{
                result.append(count)
            }
        }
        result.append(count)
    }
    return result
}

//스택,큐 사용 
