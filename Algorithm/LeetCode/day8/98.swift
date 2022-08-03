//
//  98.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/03.
//

import Foundation
//해결 못함,, 그래서 방법 2가지 찾아서 이해해봤다. 
//1번 방법
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isValidNode(root, Int.min, Int.max)
    }
    func isValidNode(_ root: TreeNode?, _ min: Int, _ max: Int ) -> Bool{
        guard let p = root else {return true}
        if p.val >= max || p.val <= min {return false}
        return isValidNode(p.left, min, p.val) && isValidNode(p.right, p.val, max)
    }
}
//2번 방법
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        var isValid = true
        func find(_ node: TreeNode?,_ lower: Int,_ upper: Int ) {
            if node == nil { return }
            if node!.val > lower, node!.val < upper {
                find(node?.left, lower, node!.val)
                find(node?.right, node!.val, upper)
            } else {
                isValid = false
                return
            }
        }
        find(root, Int.min, Int.max)
        return isValid
    }
}
