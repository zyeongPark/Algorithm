//
//  joyStick.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/06.
//

import Foundation
//아스키코드 이용하기
//긁어옴 -> 재도전
func solution(_ name:String) -> Int {
    let aValue = 65
    let zValue = 90
    let name = name.map{ $0 }
    //조이스틱 위/아래로만 움직일 때 함수
    func stickUpDown(c: Character) -> Int {
        let ascii = Int(c.asciiValue!)
        let front = ascii - aValue
        let back = zValue + 1 - ascii
        return min(front, back)
    }
    // 위아래는 좌우의 이동과 상관 없으니까 result에 이동 수 더해줌
    var result = 0
    for i in 0..<name.count {
        result += stickUpDown(c: name[i])
    }
    
    // 좌우로 움직일 때: 한 방향 or 도중에 돌아가는경우 -> 한 방향이면 문자열 수 - 1 과 같음
    var count = name.count - 1
    for i in 0..<name.count {
        if name[i] != "A" {
            var nextIndex = i + 1
            // 연속된 A가 많으면 되돌아가는 경우 검사
            while nextIndex < name.count && name[nextIndex] == "A" {
                nextIndex += 1
            }
            // 지금까지 온거리 * 2 -> 왔다가 되돌아가는경우
            // 문자열수 - nextIndex -> 끝나는 마지막 인덱스까지의 거리
            let move = i * 2 + name.count - nextIndex
            count = min(move, count)
        }
    }
    //print(result)
    return result+count
}

