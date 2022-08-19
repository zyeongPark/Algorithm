//
//  베스트앨범.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/18.
//

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    //[장르명:재생된 횟수]
    var playsByGenre: [String:Int] = [:]
    //[장르명 : [해당 장르에 포함된 노래의 idx]]
    var idxByGenre: [String:[Int]] = [:]

    for i in 0..<genres.count {
        let genre = genres[i]
        let play = plays[i]

        if let pCount = playsByGenre[genre] {
            playsByGenre[genre] = pCount + play
        } else {
            playsByGenre[genre] = play
        }
        if idxByGenre[genre] != nil {
            idxByGenre[genre]!.append(i)
        } else {
            idxByGenre[genre] = [i]
        }
    }
    //현재 상태
    //playsByGenre = [classic:1450, pop:3100]
    //idxByGenre = [pop:[1,4], classic:[0,2,3]]
    
    //장르 중에 가장 많이 재생된 것 순으로 playsByGenre 정렬
    let manyPlayGenre: [String] = Array(playsByGenre.keys).sorted{
        return playsByGenre[$0]! > playsByGenre[$1]! //내림차순으로 뽑아내는 클로져 방식
    }

    var answer: [Int] = []
    for genre in manyPlayGenre {//genre는 pop or classic
        let idx = idxByGenre[genre]!.sorted{
            return plays[$0] > plays[$1] //내림차순 정렬
        }
        answer.append(idx[0]) //
        if idx.count > 1 {
            answer.append(idx[1])
        }
        
    }
    return answer
}


//추가로 만든 테케 :solution(["a", "a", "c", "d", "d", "a"], [1, 2, 4, 7, 9, 10])
