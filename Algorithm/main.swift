//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//

import Foundation

// 4673, 1110, 10951, 2439번 다시 풀어야함
// 여긴 테스트용 입니다 여기서 테스트 한 후에 폴더에 넣습니다.

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge = Array(repeating: 0, count: bridge_length) //여기가 포인트
    var trucks = truck_weights
    var count = 0
    var bridgeWeight = 0
    
    while !bridge.isEmpty {
        //1초씩 이동
        count += 1
        //1초씩 이동하니까 제일 앞의 배열을 삭제
        bridgeWeight -= bridge.removeFirst()

        //다리에 진입할 트럭을 무게와 비교해서 안넘으면 추가
        if let t = trucks.first {
            // 넘을 경우 빈공간
            if t + bridgeWeight <= weight {
                bridgeWeight += trucks.removeFirst()
                bridge.append(t)
            } else {
                // 안넘을경우 무게 추가
                bridge.append(0)
            }
        }
    }
    return count
}
