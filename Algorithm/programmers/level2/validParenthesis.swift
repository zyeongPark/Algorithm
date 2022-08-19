//
//  올바른 괄호 .swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/19.
//

import Foundation
//스택 사용해서 풀기
func solution(_ s:String) -> Bool{
    var res:[Character] = []
    for x in s{
        if x == "("{
            res.append(x)
        }else{
            if res.count == 0{
                res.append("x")
                break
            }else{
                res.popLast()
            }
        }
    }
    print(res)
    return res.count == 0 ? true: false
}

//사용하지 않고 풀기
import Foundation
func solution(_ s:String) -> Bool{
    var count = 0
    for x in s {
        if count < 0 {
            break
        }else if x == "("{
            count += 1
        }else{
            count -= 1
        }
    }
    if count == 0{
        return true
    }else{
        return false
    }
}
