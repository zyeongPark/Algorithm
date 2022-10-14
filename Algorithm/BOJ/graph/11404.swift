//
//   11404.swift
//  Algorithm
//
//  Created by 박지영 on 2022/10/12.
//
import Foundation
//플로이드-워셜 알고리즘 사용하는 문제
let INF: Int = Int(1e9)
var city: Int = 0 // 도시의 개수
var bus: Int = 0 // 버스의 개수
//입력받기
if let input = readLine() {
    city = Int(input)!
}
if let input = readLine() {
    bus = Int(input)!
}
 
// a에서 b로 가는데 필요한 비용
var graph: [[Int]] = Array(repeating: Array(repeating: INF, count: city + 1), count: city + 1)
 
// i에서 i의 경우 0으로 설정
for i in 1...city {
    graph[i][i] = 0
}
 
// 버스 정보 입력받기
for _ in 0..<bus {
    if let input = readLine() {
        let inputs = input.split(separator: " ").map { Int($0)! }
        let a: Int = inputs[0]
        let b: Int = inputs[1]
        let c: Int = inputs[2]
        
        // 문제에서 시작 도시와 도착 도시를 연결하는 노선이 하나가 아닐 수 있다고 함
        // 즉, a에서 b로 가는 노선이 여러개 주어질 경우 graph 배열에 최솟값을 넣어주도록 설정
        graph[a][b] = min(graph[a][b], c)
    }
}
 
// 플로이드 워셜
for k in 1...city {
    for i in 1...city {
        for j in 1...city {
            graph[i][j] = min(graph[i][j], graph[i][k] + graph[k][j])
        }
    }
}
 
// 결과 출력
for i in 1...city {
    for j in 1...city {
        if graph[i][j] == INF {
            print(0, terminator: " ")
        } else {
            print(graph[i][j], terminator: " ")
        }
    }
    print()
}

