//
//  representSet.swift
//  Algorithm
//
//  Created by 박지영 on 2022/09/09.
//

import Foundation
//최종 리턴할 answer 배열
var answer :[String] = []
//한 줄 입력받았을 때 문자열을 [int]로 반환해주는 ip 함수
let ip: (() -> [Int]) = {
    var result:[Int] = []
    var temp = 0
    let input = readLine()!
    input.forEach{
        if $0 == " "{
            result.append(temp)
            temp = 0
            return
        }
        temp = temp * 10 + Int($0.unicodeScalars.first!.value) - 48
    }
    result.append(temp)
    return result
}
//ip함수써서 [int]로 반환받고
let arr = ip()
//n,k(m)입력 받음
let n = arr[0], K = arr[1]
//각 노드의 부모노드를 기록할 parent 배열 -> 각각은 맨 처음 자기 자신이 부모노드 이지만, unionfind를 통해 하나씩 통합됨
var parent = [Int](0..<n)

//특정노드의 부모노드를 반환하는 재귀함수 getParent
func getParent(_ node: Int) -> Int{
    //현재 노드가 부모노드인지 확인 -> 부모노드면 그냥 그 노드 리턴
    if parent[node] == node {return node}
    //아니라면 재귀를 통해 현재 노드의 진짜 부모노드 찾기
    parent[node] = getParent(parent[node])
    //최종적으로 진짜 부모노드 리턴
    return parent[node]
}

//합집합 연산이 된 두 노드의 부모노드를 같게 만드는 함수 mergeParent
func mergeParent(_ A: Int, _ B: Int) {
    //a,b 노드의 부모노드 구하고,
    let parentA = getParent(A)
    let parentB = getParent(B)
    //두 노드 중 작은부모로 두 노드의 부모노드를 통일함
    if parentA < parentB {
        parent[parentB] = parentA
    }
    else{
        parent[parentA] = parentB
    }
}

//여기가 메인 -> 이제 m(k)번의 연산을 통해 유니온파인드 연산 & 두 노드가 같은 부모노드인지 출력하는 연산 수행
(0..<K).forEach { _ in
    //일단 값 받고,
    let arr2 = ip()
    let t = arr2[0], A = arr2[1], B = arr2[2]
    // t가 0이라면 두 노드의 부모노드가 다를때 mergeParent로 부모노드 통합
    if t == 0{
        if getParent(A) != getParent(B){ mergeParent(A,B) }
        }
    // t가 1이라면, 두 노드의 부모노드가 같은 지 확인하고 yes or no answer배열에 추가
    else{
        if getParent(A) == getParent(B) {answer.append("YES")}
        else { answer.append("NO")}
    }
}
//answer배열에 있는 값들 최종적으로 하나씩 출력
print(answer.joined(separator: "\n"))

//유니온 파인드 예시
//func union(_ x: String, _ y: String) {
//    let parentX = find(x)
//        let parentY = find(y)
//
//        if parentX != parentY {
//            parent[parentY] = parentX
//        }
//}
//
//func find(_ x: String) -> String {
//    if parent[x] == x {
//            return x
//        } else {
//            let topParent = find(parent[x]!)
//                parent[x] = topParent
//                return parent[x]!
