//
//  diskController.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/25.
//

import Foundation
func solution(_ jobs:[[Int]]) -> Int {
    
    struct Disk {
        var start: Int
        let process: Int
    }
    
    var jobs = jobs.map { Disk(start: $0[0], process: $0[1]) }
    jobs.sort { $0.start < $1.start }
    
    let firstTime = jobs[0].start
    if firstTime != 0 {
        for i in jobs.indices {
            jobs[i].start -= firstTime
        }
    }
    
    var priorityQueue = PriorityQueue<Disk> {
        if $0.process == $1.process {
            return $0.start < $1.start
        } else {
            return $0.process < $1.process
        }
    }
    
    var curTime = 0
    var totalTime = 0
    var jobsIndex = 0

    while jobsIndex < jobs.count || !priorityQueue.isEmpty() {
    
        while jobsIndex < jobs.count && jobs[jobsIndex].start <= curTime {
            priorityQueue.enQueue(jobs[jobsIndex])
            jobsIndex += 1
        }
        
        if let disk = priorityQueue.deQueue() {
            totalTime += curTime - disk.start + disk.process
            curTime += disk.process
        } else {
            curTime = jobs[jobsIndex].start
        }

    }
    
    let result = totalTime/jobs.count
    return result
}

