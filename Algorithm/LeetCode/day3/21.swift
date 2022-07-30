//
//  21.swift
//  Algorithm
//
//  Created by 박지영 on 2022/07/29.
//

import Foundation
//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        //l1이랑 l2가 없는 값이라면 그냥 nil 리턴
        if l1 == nil && l2 == nil { return nil }
        //현재 l1,l2는 바꿀 수 없는 값이니까 var처리 해줘야함
        var l1 = l1
        var l2 = l2
        //최종적으로 combine된 노드들을 가지고 있을 dummy변수 생성
        var dummy: ListNode? = ListNode(-1)
        var current = dummy
        //l1,l2가 둘 다 nil값이 아니라면 while 문 돌리기
        while l1 != nil && l2 != nil{
            let l1val = l1!.val
            let l2val = l2!.val
            
            if l1val < l2val{
                current?.next = l1
                l1 = l1?.next
            }else{
                current?.next = l2
                l2 = l2?.next
            }
            //현재 노드를 next로 바꿔주는 거 잊으면 안댐
            current = current?.next
        }
        //만약에 반복문이 끝났는데도 l1의 길이가 l2보다 크다면,(즉, l1이 nil값을 갖지 않는다면)
        if l1 != nil{
            //현재 노드의 다음은 무조건 l1이다.
            current?.next = l1
        }
        //만약에 반복문이 끝났는데도 l1의 길이가 l2보다 크다면,(즉, l1이 nil값을 갖지 않는다면)
        if l2 != nil {
            //현재 노드의 다음은 무조건 l2다.
            current?.next = l2
        }
        //최종적으로 dummy next를 리턴
        return dummy?.next
    }
}
