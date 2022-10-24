//
//  insertionSort.swift
//  Algorithm
//
//  Created by 박지영 on 2022/10/23.
//

import Foundation
//삽입 정렬 정리하기
var input = [8,6,5,2,4]
func insertionSort<T: Comparable>(_ input: [T]) -> [T] {
    var sortedArray = input
    for i in 1..<input.count {
        var j = i
        let temp = sortedArray[j]
        while (j > 0 && temp < sortedArray[j - 1]) {
            sortedArray[j] = sortedArray[j - 1]
          j -= 1
        }

        sortedArray[j] = temp
    }
    return sortedArray
}

print(insertionSort((input)))

//선택정렬 특징
//단순 but 비효율
//시간복잡도 : best(이동 없이 1번의 비교만) - o(n) & worst (각 반복마다 i번 비교) - O(n^2)
//공간복잡도 : 주어진 배열 안에서만 교환 - o(n)
//inplace : true (추가적인 메모리 공간 거의 필요 x)
//stable

