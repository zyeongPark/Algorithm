//
//  2480.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/14.
//

import Foundation

var dice = readLine()!.components(separatedBy: " ")
var result = 0
var diceArr :[Int] = []
for i in 0..<3{
    diceArr.append(Int(dice[i])!)
}

if (diceArr[0] == diceArr[1] && diceArr[1] == diceArr[2]) { //3개가 주사위 눈이 모두 같을 때
    print(10000 + (diceArr[0])*1000)
}else if diceArr[0] == diceArr[1]{ //0,1 인덱스 값만 같을 때
    if diceArr[0] != diceArr[2]{
        print(1000 + (diceArr[0])*100)
    }
}else if diceArr[1] == diceArr[2]{ //1,2 인덱스 값만 같을 때
    if diceArr[1] != diceArr[0]{
        print(1000 + (diceArr[1])*100)
    }
}else if diceArr[0] == diceArr[2]{ //0,2 인덱스 값만 같을 때
    if diceArr[0] != diceArr[1]{
        print(1000 + (diceArr[0])*100)
    }
}else{
    print(diceArr.max()! * 100 )
}


//더 짧고 간결하게 코드 짜기 --> map: "고차함수"
//let values = readLine()!
//    .split(separator: " ")
//    .map { Int($0)! }
//    .sorted(by: >)
//let set = Set<Int>(values)
//
//if set.count == 3 {
//    print(values[0] * 100)
//} else if set.count == 2 {
//    print(1000 + values[1] * 100)
//} else {
//    print(10000 + values[0] * 1000)
//}
