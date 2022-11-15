//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//
// 4673, 10951, 2439번

import Foundation
//카카오- 2018(1차 캐시)

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    let newCitiies = cities.map {
        return $0.lowercased()
    }

    var cacheArray = [String]()
    var totalTime = 0

    for city in newCitiies {
        // cache hit
        if cacheArray.contains(city) {
            totalTime += 1
            cacheArray.remove(at: cacheArray.firstIndex(of: city)!)
            cacheArray.append(city)
        } else { // cache miss
            totalTime += 5
            cacheArray.append(city)
            if cacheArray.count > cacheSize {
                cacheArray.removeFirst()
            }
        }
    }
    return totalTime
}



