//
//  1654.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/30.
//

import Foundation
func solution() -> Int {
    //값 입력받기
    let inputLine = readLine()!.split(separator: " ").map({Int($0)!})
    let k = inputLine[0]
    let n = inputLine[1]
    var lines = [Int]()
    for _ in 0..<k{
        lines.append(Int(readLine()!)!)
    }
    //start,end,result 초기화
    var start = 1
    var end = lines.max()!
    var result = 0
    //main logic
    //start와 end의 중간값으로 랜선을 잘라보고,
    //생성된 랜선의 수가 원하는 랜선 수보다 많거나 같으면 start를 mid+ 1,
    //적으면 end를 mid - 1로 설정하여 계속 반복
    while (start <= end){
        let mid = (start + end) / 2
        var temp = 0
        for line in lines{
            temp += line / mid
        }
        if temp >= n{
           if result < mid{
                result = mid
            }
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return result
}
print(solution())

