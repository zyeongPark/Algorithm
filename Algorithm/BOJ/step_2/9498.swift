//
//  1234.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/14.
//

import Foundation
//시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.

var score = Int(readLine()!)!

if 90 <= score && score <= 100{
    print("A")
}else if 80 <= score && score < 90{
    print("B")
}else if 70 <= score && score < 80{
    print("C")
}else if 60 <= score && score < 70{
    print("D")
}else {
    print("F")
}
