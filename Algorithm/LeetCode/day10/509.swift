//
//  F509.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/05.
//

import Foundation
class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }else if n == 1 || n == 2{
            return 1
        }else{
            return fib(n-1) + fib(n-2)
        }
    }
}
