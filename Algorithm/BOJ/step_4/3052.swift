//
//  3052.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/23.
//

import Foundation
var res :[Int] = []
for _ in 1...10{
    var num = Int(readLine()!)!
    if res.contains(num%42){
        continue
    }else{
        res.append(num%42)
    }
}
print(res.count)

//===============set이용하는방법===============
var set = Set<Int>()
for _ in 1...10{
    var num = Int(readLine()!)!
    set.insert(num%42)
}

print(set.count)
