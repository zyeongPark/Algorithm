//
//  206.swift
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
    func reverseList(_ head: ListNode?) -> ListNode? {
        //head 다음에 암것도 없으면 헤드가 마지막 값이니까 리턴
        if head?.next == nil {
            return head
        }
        //리스트의 헤드 next를 result로 만들어 놓고
        let result = reverseList(head?.next)
        //그 헤드next의 다음을 새로운 head로 만듬
        head?.next?.next = head
        //그리고 나서 새로운 head의 next를 nil로 둠
        head?.next = nil
        
        return result
    }
}
