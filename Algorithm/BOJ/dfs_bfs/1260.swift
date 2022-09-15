//
//  1260.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/15.
//

import Foundation
// 백준 1260번
//현재: 출력 초과 에러!! -> 다시 풀어보기 
import Foundation

//dfs 함수: lifo 스택 사용
func dfs(start: Int) {
    let visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.popLast()!
        if !visited.contains(node) {
            print(node, terminator: " ")
            stack.append(contentsOf: graph[node].sorted(by:>))
        }
    }
}

//bfs함수 : fifo queue 사용
func bfs(start: Int) {
    var visited = [Int]()
    var queue = [start]
    
    while !queue.isEmpty {
        let node = queue.removeFirst() //여기서는 언래핑 할 필요 x
        
        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            queue.append(contentsOf: graph[node].sorted(by: >))
        }
    }
}

var readline = readLine()!.split(separator: " ").map { Int($0)! }
let n = readline[0]
let m = readline[1]
let v = readline[2]
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n+1) //0부터 시작하니까 n+1

for i in 0..<m {
    let readline = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = readline[0]
    let b = readline[1]
    graph[a].append(b)
    graph[b].append(a)
}

dfs(start:v)
print()
bfs(start:v)


//재도전 풀이(해결~~ 약간의 오류 수정) 
import Foundation

//dfs 함수: lifo 스택 사용
func dfs(start: Int) {
    var visited = [Int]()
    var stack = [start] //이미 들어감
    
    while !stack.isEmpty {
        let node = stack.popLast()!
        //print(node)
        if !visited.contains(node) {
            visited.append(node) //여기 추가
            print(node, terminator: " ")
            stack.append(contentsOf: graph[node].sorted(by:>))
        }
    }
}

//bfs함수 : fifo queue 사용 -> bfs기본 ->
func bfs(start: Int) {
    var visited = [Int]()
    var queue = [start]
    
    while !queue.isEmpty {
        let node = queue.removeFirst() //여기서는 언래핑 할 필요 x
        
        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            queue.append(contentsOf: graph[node].sorted())
            //graph node안에 요소들을 반복문으로 돌면서 visited nextnode, graphnode 확인 (티모님 코드 확인)
        }
    }
}

var readline = readLine()!.split(separator: " ").map { Int($0)! }
let n = readline[0]
let m = readline[1]
let v = readline[2]
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n+1) //0부터 시작하니까 n+1

for _ in 0..<m {
    let readline = readLine()!.split(separator: " ").map{ Int($0)! }
    let a = readline[0]
    let b = readline[1]
    graph[a].append(b)
    graph[b].append(a)
}

dfs(start:v)
print()
bfs(start:v)
