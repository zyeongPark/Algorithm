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
        if l1 == nil && l2 == nil { return nil }
        
        var l1 = l1
        var l2 = l2
        
        var dummy: ListNode? = ListNode(-1)
        var current = dummy
        
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
            current = current?.next
        }
        if l1 != nil{
            current?.next = l1
        }
        if l2 != nil {
            current?.next = l2
        }
        return dummy?.next
    }
}
