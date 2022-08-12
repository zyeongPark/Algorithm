//
//  642.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/12.
//

import Foundation
//찾아본 코드
class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        //words에 있는 문자열이랑 그 개수 정리
        var hash: [String: Int] = [:]
        for word in words {
            // .. and count them
            hash[word, default: 0] += 1
        }
        
        //여기가 메인 -> 클로져 사용법
        let sorted: [(key: String, value: Int)] = hash.sorted { element1, element2 in
            if element1.value == element2.value {
                return element1.key < element2.key
            }
            return element1.value > element2.value
        }
        
        //k가 최대니까 거기까지 오름차순 정렬 하고 문자열(key) 순서대로 반환
        let shrunk: [(key: String, value: Int)] = Array(sorted[0..<k])
        //또는 return Array(keys.prefix(k)) 이렇게 출력하는 것도 깔끔하다 
        return shrunk.map { element in
            return element.key
        }
    }
}
