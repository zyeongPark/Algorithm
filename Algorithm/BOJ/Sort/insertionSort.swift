//
//  insertionSort.swift
//  Algorithm
//
//  Created by 박지영 on 2022/10/23.
//

import Foundation
//삽입 정렬 정리하기
input = [8,6,5,2,4]
func insertionSort<T: Comparable>(_ array: [T]) -> [T] {
    var sort = input
    for i in 1..<input.count {
        var j = i
        let temp = input[j]
        while (j > 0 && temp < input[j - 1]) {
            input[j] = input[j - 1]
          j -= 1
        }
        
        input[j] = temp
    }
    return sort
}
print(insertionSort((input)))

단순 but 비효율
시간복잡도 : best(이동 없이 1번의 비교만) - o(n) & worst (각 반복마다 i번 비교) - O(n^2)
공간복잡도 : 주어진 배열 안에서만 교환 - o(n)
inplace : true (추가적인 메모리 공간 거의 필요 x)
stable

