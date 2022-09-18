//
//  2667.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/16.
//

import Foundation
//n이랑 graph 형태 값 받기
let n = Int(String(readLine()!))!
//graph 저장용
var graph = [[Int]]()
//붙어있는 단지 count 저장용
var cntList = [Int]()
var count = 0
// x,y 축으로 방향 돌려가면서 확인하기용
let dx = [1, -1, 0, 0] //오,왼
let dy = [0, 0, 1, -1] //위,아래

for _ in 0..<n {
    graph.append(Array(readLine()!.map{ Int(String($0))! }))
}

func dfs(_ i: Int, _ j: Int) -> Int {
    var deque = [(Int, Int)]()
    //덱에 넣어서
    deque.append((i, j))
    graph[i][j] = 0 // 방문처리 후 count는 1로 만들기
    count = 1
    
    //덱이 비어있지 않다면,
    while !deque.isEmpty {
        let house = deque.removeFirst()
        let x = house[0]
        let y = house[1]
        
        //오,왼,위,아래 방향에 따라 돌기
        for k in 0..<4 {
            let nx = x + dx[k]
            let ny = y + dy[k]
            
            if nx < 0 || ny < 0 || nx >= n || ny >= n {
                continue
            }
            
            if graph[nx][ny] == 1 {
                graph[nx][ny] = 0
                deque.append((nx, ny))
                count += 1
            }
        }
    }
    return count
}

for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] == 1 {
            cntList.append(dfs(i,j))
        }
    }
}

print(cntList.count)
cntList.sort()
for i in cntList {
    print(i)
}
