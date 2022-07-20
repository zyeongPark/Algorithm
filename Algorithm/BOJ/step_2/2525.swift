//
//  2525.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/14.
//

import Foundation

var time = readLine()!.components(separatedBy: " ")
var cooking = Int(readLine()!)!
var t_hour = Int(time[0])!
var t_min = Int(time[1])!
var c_time = cooking + t_min

if c_time < 60 {
    t_min = c_time
}else{
    t_hour += c_time / 60
    t_min = c_time % 60
    if t_hour >= 24 {
        t_hour -= 24
    }
}

print(t_hour, t_min)
