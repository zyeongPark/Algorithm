//
//  2753.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/14.
//

import Foundation

//윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때이다.
var yun_year = Int(readLine()!)!

if ((yun_year % 4 == 0) && (yun_year % 100 != 0)) || (yun_year % 400 == 0) {
    print(1)
}else{print(0)}
