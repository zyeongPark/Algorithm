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
        // Create a map for the words
        var hash: [String: Int] = [:]
        // Iterate through the words
        for word in words {
            // .. and count them
            hash[word, default: 0] += 1
        }
        
        //여기가 메인
        let sorted: [(key: String, value: Int)] = hash.sorted { element1, element2 in
            if element1.value == element2.value {
                return element1.key < element2.key
            }
            return element1.value > element2.value
        }
        
        // Get only k elements...
        let shrunk: [(key: String, value: Int)] = Array(sorted[0..<k])
        // And return only the key
        return shrunk.map { element in
            return element.key
        }
    }
}
