//
//  selectionSort.swift
//  Algorithm
//
//  Created by 박지영 on 2022/10/21.
//

import Foundation
//선택정렬
var input = [9,8,7,6,5,4,3,2,1]
for i in 0..<input.count{
    var min : Int =  input[i]
    var idx : Int = i
    for j in i+1..<input.count{
        if(min>input[j])
        {
            min=arr[j];
            idx = j;
        }
    }
    if i != idx{
        swap(&input[i],&input[idx])
    }
}
for i in 0..<8{
    print(input[i])
}

//시간복잡도 : o(n^2) (최선,최악 모두)
//공간복잡도 : o(n)
//inplace : true
//unstable


