//
//  mockExam.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/31.
//

import Foundation
func solution(_ answers:[Int]) -> [Int] {
    let supo1 = [1, 2, 3, 4, 5]
    let supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var people = [0, 0, 0]
    var answer:[Int] = []
    for i in 0..<answers.count{
        if answers[i] == supo1[ i % 5 ]{ //수포자1은 주기가 5
            people[0] += 1
        }
        if answers[i] == supo2[ i % 8 ]{ //수포자2는 주기가 8
            people[1] += 1
        }
        if answers[i] == supo3[ i % 10 ]{ //수포자3은 주기가 10
            people[2] += 1
        }
    }
    let max = people.max()!
    for i in 0..<people.count{
        if people[i] == max{
            answer.append(Int(i+1))
        }
    }
    return answer
}
