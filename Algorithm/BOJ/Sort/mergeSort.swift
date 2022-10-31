//
//  mergeSort.swift
//  Algorithm
//
//  Created by 박지영 on 2022/10/26.
//

import Foundation
//병합 정렬 개념 정리
var array :[Int] = [4,5,1,3,2]

func mergeSort(arr:[Int]) -> [Int] {
    guard arr.count > 1 else{return arr}
    let middle = arr.count/2
    let leftArr = mergeSort(arr: Array(arr[0..<middle]))
    let rightArr = mergeSort(arr: Array(arr[middle..<arr.count]))
    return merge(left: leftArr, right: rightArr)

}

func merge(left:[Int], right:[Int]) -> [Int]{
    var leftIdx = 0
    var rightIdx = 0
    var ordered = [Int]()
    while leftIdx < left.count , rightIdx < right.count{
        if left[leftIdx] < right[rightIdx] {
            ordered.append(left[leftIdx])
            leftIdx += 1
        }else if left[leftIdx] > right[rightIdx] {
            ordered.append(right[rightIdx])
            rightIdx += 1
        }else{
            ordered.append(left[leftIdx])
            leftIdx += 1
            ordered.append(right[rightIdx])
            rightIdx += 1
        }
    }
    while leftIdx < left.count{
        ordered.append(left[leftIdx])
        leftIdx += 1
    }
    while rightIdx < right.count{
        ordered.append(right[rightIdx])
        rightIdx += 1
    }
    return ordered
    
}
print(mergeSort(arr: (array)))


//병합정렬 특징
//시간복잡도 :
//공간복잡도 :
//inplace :
//stable/unstable :
