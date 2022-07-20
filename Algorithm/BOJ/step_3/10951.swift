//
//  10951.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/20.
//

import Foundation
//내가 짠 코드 -> 계속 런타임 에러가 뜨길래 구글링함
//var resArr: [Int] = []
//var i : Int = 0
//while i>=0 {
//    let inputArr = readLine()!.components(separatedBy: " ")
//    let a = Int(inputArr[0])!
//    let b = Int(inputArr[1])!
//    resArr.append(a+b)
//    print(resArr[i])
//    i+=1
//}


//구글링한 코드
//readLine()을 바로 받아서 그 값이 있으면 input 상수로 넣는다는 뜻.
//readLine()에 숫자가 아닌 값이 들어가면 var a = Int(arr[0])! 에서 언랩핑 시 숫자가 아닌게 들어있으므로 앱이 끝난다.
while let input = readLine() {
    var arr = input.split(separator: " ")
    var a = Int(arr[0])!
    var b = Int(arr[1])!
    print(a+b)
}

