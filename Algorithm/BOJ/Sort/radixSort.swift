//
//  radixSort.swift
//  Algorithm
//
//  Created by 박지영 on 2022/11/01.
//

import Foundation
func radixSort(_ array: inout [Int]) -> [Int] {
    let radix = 10  // 0 ~ 9 까지의 10개의 자릿수
    var done = false
    var index: Int
    var digit = 1
    
    while !done {
        done = true
        var buckets: [[Int]] = [] //자릿수 비교를 위해 2중 배열 선언
        for _ in 1...radix { buckets.append([]) }

        for number in array {
            index = number / digit // 해당 요소 자릿수의 숫자를 추출
            buckets[index % radix].append(number) // 해당 자릿수 버킷에 데이터 추가
            if done && index > 0 {
                done = false
            }
        }

        var i = 0

        for j in 0..<radix {
            let bucket = buckets[j]
            for number in bucket {
                array[i] = number
                i += 1
            }
        }

        digit *= radix  // 다음 자릿수 비교를 위해 
    }
    
    return array
}


//특징: "버킷" 이라는 추가적인 메모리 공간 필요(일반적으로 큐 사용) 왜냐면 큐는 fifo 여서 스택보다 편리하다
//특징: 기수 란 "자릿수"를 의미함
//특징: 알고리즘이 자주 사용되지는 않기 때문에 이러한 개념이 있다~ 정도로 확인하면 좋다!
//시간복잡도 : o(n) (최선,최악 모두)
//공간복잡도 : o(k+n) -> k는 자릿수의 크기
//inplace(원소들의 개수에 비해서 충분히 무시할 만한 저장 공간만을 더 사용하는 정렬 알고리즘) :false 
//stable
