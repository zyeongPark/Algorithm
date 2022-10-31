//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//
// 4673, 10951, 2439번

import Foundation
//열목이님 코드 다시보기
//struct Node {
//    let number: Int
//    let weight: Int
//}
//struct MinHeap {
//    var heap = [Node(number: 0, weight: 0)]
//
//    var isEmpty: Bool { return heap.count == 1 }
//
//    func parentIndex(_ index: Int) -> Int {
//        index / 2
//    }
//
//    private func leftChildIndex(of index: Int) -> Int {
//        index * 2
//    }
//
//    private func rightChildIndex(of index: Int) -> Int {
//        index * 2 + 1
//    }
//
//    mutating func enqueue(_ element: Node) {
//        if heap.count == 1 {
//            heap.append(element)
//            return
//        }
//        heap.append(element)
//
//        restructureForPush()
//    }
//    mutating func restructureForPush() {
//        var index = heap.count - 1
//
//        while index != 1 && heap[index].weight < heap[parentIndex(index)].weight {
//            heap.swapAt(index, parentIndex(index))
//            index /= 2
//        }
//    }
//
//    mutating func dequeue() -> Node? {
//        guard heap.count > 1 else { return nil}
//
//        if heap.count == 2 {
//            return heap.removeLast()
//        }
//
//        let minValueNode = heap[1]
//        heap[1] = heap.removeLast()
//
//        restructureForPop()
//
//        return minValueNode
//    }
//
//    mutating func restructureForPop() {
//        var index = 1
//        while rightChildIndex(of: index) < heap.count {
//            if heap[index].weight <= min(heap[leftChildIndex(of: index)].weight, heap[rightChildIndex(of: index)].weight) {
//                break
//            } else if heap[leftChildIndex(of: index)].weight < heap[rightChildIndex(of: index)].weight {
//                heap.swapAt(index, leftChildIndex(of: index))
//                index = leftChildIndex(of: index)
//            } else {
//                heap.swapAt(index, rightChildIndex(of: index))
//                index = rightChildIndex(of: index)
//            }
//        }
//
//        if leftChildIndex(of: index) < heap.count && heap[index].weight > heap[leftChildIndex(of: index)].weight {
//            heap.swapAt(index, leftChildIndex(of: index))
//        }
//    }
//}
//
//let infinity = Int(1e9)
//let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
//let (numberOfVertices, numberOfEdges) = (inputData[0], inputData[1])
//
//let startVertex = Int(readLine()!)!
//
//var graph = Array(repeating: Array(repeating: infinity, count: numberOfVertices + 1), count: numberOfVertices + 1)
//var visited = Array(repeating: false, count: numberOfVertices + 1)
//
//var minWeight = Array(repeating: infinity, count: numberOfVertices + 1)
//var priorityQueue = MinHeap()
//
//for index in 1...numberOfVertices {
//    graph[index][index] = 0
//}
//
//for _ in 0..<numberOfEdges {
//    let inputData = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    let (departure, destination, weight) = (inputData[0], inputData[1], inputData[2])
//
//    graph[departure][destination] = weight
//}
//
//
//func solution(_ start: Int) {
//    priorityQueue.enqueue(Node(number: start, weight: graph[start][start]))
//
//    minWeight[start] = 0
//
//    while !priorityQueue.isEmpty {
//        guard let now = priorityQueue.dequeue() else { return }
//
//        if minWeight[now.number] < now.weight {
//            continue
//        }
//        // now를 경유지로 해서, 처음~마지막 노드를 목적지로 삼아서 기존의 비용보다 적게 든다면 갱신, 우선순위 큐에 삽입
//        for destination in 1...numberOfVertices {
//            let viaWeight = minWeight[now.number] + graph[now.number][destination]
//            if viaWeight < minWeight[destination] {
//                minWeight[destination] = viaWeight
//                priorityQueue.enqueue(Node(number: destination, weight: viaWeight))
//            }
//        }
//    }
//}
//
//solution(startVertex)
//
//for index in 1...numberOfVertices {
//    if minWeight[index] == infinity {
//        print("INF")
//    } else {
//        print(minWeight[index])
//    }
//}

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

