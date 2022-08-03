//
//  235.swift
//  Algorithm
//
//  Created by 박지영 on 2022/08/03.
//

import Foundation
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
//      left,right이 있을 수도 있고 없을 수도 있으므로 optional
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
//p,q의 공통 부모 노드 찾기
class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let rootNode = root else{
            return nil
        }
        guard let pNode = p else{
            return nil
        }
        guard let qNode = q else{
            return nil
        }
        if pNode.val > rootNode.val && qNode.val > rootNode.val{
            return lowestCommonAncestor(rootNode.right, pNode, qNode)
        }else if pNode.val < rootNode.val && qNode.val < rootNode.val{
            return lowestCommonAncestor(rootNode.left, pNode, qNode)
        }
//        print(pNode.val)
//        print(qNode.val)
//        print(rootNode.val)
        return rootNode
    }
}
