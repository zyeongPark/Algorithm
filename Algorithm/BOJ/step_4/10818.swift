//
//  new.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/20.
//
import Foundation

var input = Int(readLine()!)!
//var inputArr = Int(readLine()!.components(separatedBy: " "))! --> swift는 이렇게 짜면 안된다.
//정수 여러개 입력받기 위해서는 아래와 같이 코드 짜야함!!
let inputArr = readLine()!.split(separator: " ").map { Int(String($0))!}
//min, max 활용할 때는 아래와 같이 코드 짜야 한다.
let a = inputArr.min() ?? 0
let b = inputArr.max() ?? 0

print(a,b)
//구글링한 코드 :
print(inputArr.min()!, inputArr.max()!)
