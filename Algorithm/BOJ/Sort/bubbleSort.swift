//
//  bubbleSort.swift
//  Algorithm
//
//  Created by 박지영 on 2022/10/20.
//

import Foundation
//bubble sort
let input = [7,4,1,3,5]
func bubbleSort(array: [Int]) -> [Int]{
    var arr = array
    for i in 0..<arr.count{
        for j in 0..<arr.count-1{
            if arr[j] > arr[j+1]{
                arr.swapAt(j, j+1)
            }
        }
    }
    return arr
}
print(bubbleSort(array: input))


