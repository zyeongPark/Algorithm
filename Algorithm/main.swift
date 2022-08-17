//
//  main.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/13.
//

import Foundation

// 4673, 1110, 10951, 2439번 다시 풀어야함

func solution(_ clothes:[[String]]) -> Int {
  var count = [String: Int]() // 의상 종류별 개수를 세어줄 변수
  var result = 1 // 경우의 수 계산해서 저장할 변수
  
  // 1) 의상 종류별 숫자 세기
  for cloth in clothes {
    if count[cloth[1]] == nil { // count에 해당 의상 종류가 없을 경우
      count[cloth[1]] = 2 // 선택되지 않는 경우를 포함해 초기값을 2로 설정해준다
    } else { // count에 해당 의상 종류가 이미 저장되어 있을 경우
      if let counting = count[cloth[1]] {
        count[cloth[1]] = counting + 1 // +1을 해준다
      }
    }
  }
  
  // 2) 경우의 수 계산하기
  for i in count {
    result *= i.value
  }
    print(count)
  
  return result - 1 // 아무 의상도 선택되지 않는 상황 1을 빼준 값을 return해준다
}
