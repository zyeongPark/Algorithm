//
//  1920.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/28.
//

import Foundation
//입력받기
let n = Int(readLine()!)!
var firstArr = readLine()!.split(separator: " ").map{Int($0)!}
let m = Int(readLine()!)!
var secondArr = readLine()!.split(separator: " ").map{Int($0)!}
//정렬하기
firstArr.sort()
//메인로직
func binarySearch(_ arr: [Int], _ target: Int) -> Int{
    var lo = 0
    var hi = arr.count - 1

    while (lo <= hi) {
        let mid = (lo + hi) / 2
            if firstArr[mid] == target {
                return 1
            }else if firstArr[mid] > target {
                hi = mid - 1
            }else if firstArr[mid] < target {
                lo = mid + 1
            }
        }
        return 0
}

for i in 0..<m {
    print(binarySearch(firstArr, secondArr[i]))
}
