//
//  connectIslands.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/08.
//

import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var result = 0
    //부모 n+1 개수만큼 만들어놓고
    var parent:[Int] = [Int](repeating:0, count: n+1)
    //cost오름차순으로 정렬함
    let sortedCost = costs.sorted { $0[2] < $1[2] }
    
    //일단 부모노드를 자기 자신으로 만들어둠
    for i in 1..<n+1{
        parent[i] = i
    }
    
    for cost in sortedCost{
        //부모노드의 사이클 없을 때만! union해주기
        if findParent(&parent, cost[0]) != findParent(&parent, cost[1]){
            unionParent(&parent, cost[0], cost[1])
            result += cost[2]
        }
    }
    return result
}
//부모노드 합치기
func unionParent(_ parent: inout [Int], _ x: Int, _ y:Int){
    //1. 각각의 부모노드 찾은다음에
    let x = findParent(&parent, x)
    let y = findParent(&parent, y)
    //2. 크기 비교해서 부모노드 바꿔주기
    if x < y{
        parent[y] = x
    } else{
        parent[x] = y
    }
}

//부모노드 찾기
func findParent(_ parent: inout [Int], _ p: Int) -> Int {
    if parent[p] != p {
        parent[p] = findParent(&parent, parent[p])
    }
    return parent[p]
}
