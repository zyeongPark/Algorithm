//
//  392.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/28.
//

import Foundation
////문제를 제대로 읽자. -> 이건 소트해서 잘못 푼 문제
//class Solution {
//    func isSubsequence(_ s: String, _ t: String) -> Bool {
//        guard s.isEmpty == false else { return true }
//        if s.count <= t.count{
//            let sSort = String(s.sorted())
//            let tSort = String(t.sorted())
//            let tIdx = tSort.index(tSort.startIndex, offsetBy: (s.count)-1)
//            let tStr = String(tSort[...tIdx])
//
//            if tStr == String(sSort){//타입 오류 조심
//                return true
//            }else{return false}
//        }else{
//            let sSort = String(s.sorted())
//            let tSort = String(t.sorted())
//            let sIdx = sSort.index(sSort.startIndex, offsetBy: (t.count)-1)
//            let sStr = String(sSort[...sIdx])
//
//            if sStr == String(tSort){//타입 오류 조심
//                return true
//            }else{return false}
//        }
//    }
//}
//print(Solution("abc", "abcde"))
