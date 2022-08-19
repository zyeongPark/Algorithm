//
//  기능개발.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/19.
//

import Foundation
class Solution {
    func isValid(_ s: String) -> Bool {
        var arr = [Character]()
        for c in s {
            switch c {
                case ")":
                    if arr.isEmpty{ return false }
                    if arr.removeLast() != "(" { return false }
                    break
                case "}":
                    if arr.isEmpty{ return false }
                    if arr.removeLast() != "{" { return false }
                    break
                case "]":
                    if arr.isEmpty{ return false }
                    if arr.removeLast() != "[" { return false }
                    break
                default:
                    arr.append(c)
            }
        }
        return arr.isEmpty
    }
}
