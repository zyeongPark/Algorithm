//
//  2884.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/14.
//

import Foundation

let time = readLine()!.components(separatedBy: " ")
var time_hour = Int(time[0])!
var time_min = Int(time[1])!

if time_hour == 0 {
    if time_min < 45 {
        time_hour = 23
        time_min += 15
    }else{
        time_min -= 45
    }
}else{
    if time_min < 45 {
        time_min += 15
        time_hour -= 1
    }else{
        time_min -= 45
        
    }
}
print(time_hour, time_min)
