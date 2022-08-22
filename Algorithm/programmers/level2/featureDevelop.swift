//
//  featureDevelop.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/21.
//
//5:40 ~ 6:15 (25분 걸림)
import Foundation

func solution(_ progress:[Int], _ speeds:[Int]) -> [Int] {
    var left_progress: [Int] = []
    var day:[Int] = []
    //남은 작업 퍼센테이지 left_progress에 저장
    for x in progress{
        left_progress.append(100-x)
    }
    //남은 작업량을 스피드로 나눠서 배포 가능한 기간 day에 저장
    for i in 0..<speeds.count{
        let l = left_progress[i] //subscript 사용(왜냐면 nil값이 없음)
        let s = speeds[i]
        let master = l % s
        if master == 0 {
            day.append(l/s)
        }else{
           day.append((l/s) + 1 )
        }
    }
    //메인 로직에서 막힘 -> 유진님 코드 보고 깨달음!!
    var result = [1]
    var index = 0
    for i in 1..<day.count {
        // days 배열에서 앞 순서가 뒷 순서 일수보다 클 경우
        if day[i] > day[i - 1] {

            // 앞 순서 일수 값을 뒷 순서 값에 덮어씌운다.
            result.append(1)
            index += 1

        // 뒷 순서 일수가 앞 순서 일수보다 클 경우
        } else {
            day[i] = day[i - 1]
            result[index] += 1
        }
    }
    return result
}

//구글링한 방법 중 제일 와닿았던 방법
func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
  var feature = progresses
  var speed = speeds
  var answer: [Int] = []
  
  repeat {
    var count = 0
    
    //feature(progresses)를 speeds만큼 더한다
    for idx in 0..<feature.count {
      feature[idx] += speed[idx]
    }

    repeat {
      // feature의 첫번째 값이 100이상인지 체크하고,
      if feature[0] >= 100 {
        // 100이상이 경우, feature의 값과 speed의 값 삭제 후 count 세기
        feature.removeFirst()
        speed.removeFirst()
        count += 1
      } else {
        break
      }
      // feature의 첫번째 값이 100이상이 아닐 때까지 반복해준다
      // 100이상이 아닐 경우, break로 repeat-while문을 탈출
    } while !feature.isEmpty
    
    //count가 0이상인 경우(배포한 경우), answer에 해당 값을 담는다
    if count > 0 {
      answer.append(count)
    }
    //feature에 값이 없을 때 까지 위 모든 과정을 반복
  } while !feature.isEmpty
    
  return answer
}

