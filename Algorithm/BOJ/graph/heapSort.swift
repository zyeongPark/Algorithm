//
//  heapSort.swift
//  Algorithm
//
//  Created by 박지영 on 2022/10/18.
//

import Foundation
//힙소트 공부용 
func heapify<T : Comparable>(_ array: inout [T], _ i: Int, _ size: Int) {
    var largest = i
    let left = i * 2 + 1
    let right = i * 2 + 2
    
    if left < size && array[largest] < array[left] {
        largest = left
    }
    
    if right < size && array[largest] < array[right] {
        largest = right
    }
    
    if largest != i {
        swap(&array, largest, i)
        heapify(&array, largest, size)
    }
}

func swap<T : Comparable>(_ array: inout [T] , _ i: Int, _ j: Int) {
    let temp = array[i]
    array[i] = array[j]
    array[j] = temp
}

func buildHeap<T : Comparable>(_ array: inout [T]) {
    var i = array.count/2
    
    while i >= 0 {
        heapify(&array, i, array.count)
        i -= 1
    }
}

func heapSort<T : Comparable>(_ array: inout [T]) -> [T] {
    buildHeap(&array)
    
    var size = array.count
    var i = size - 1
    
    while i >= 1 {
        swap(&array, i, 0)
        print("\(array)")
            
        i -= 1
        size -= 1
        
        heapify(&array, 0, size)
        
        print("\(array)")
    }
    
    return array
}
