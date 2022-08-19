//
//  위장.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/17.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
  var dict = [String: Int]()
  var result = 1
  //의상 종류별 개수 세기
  for cloth in clothes {
    if dict[cloth[1]] != nil { //dict에 옷이 있다면 1 추가
      dict[cloth[1]]! += 1
    } else { // dict에 옷이 없다면 1로 초기화
        dict[cloth[1]] = 1
      }
  }
    //전체 가지수 세기
    print(dict)
  for i in dict {
      result = result * (i.value + 1)
  }
  //아무것도 선택되지 않는 상황을 빼주고 리턴
  return result - 1
}
