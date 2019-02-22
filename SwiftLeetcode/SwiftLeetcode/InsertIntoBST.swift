//
//  InsertIntoBST.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 9/5/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/insert-into-a-binary-search-tree/
 
     Given the root node of a binary search tree (BST) and a value to be inserted into the tree, insert the value into the BST. Return the root node of the BST after the insertion. It is guaranteed that the new value does not exist in the original BST.
 
     Note that there may exist multiple valid ways for the insertion, as long as the tree remains a BST after insertion. You can return any of them.
 
     For example,
 
     Given the tree:
     4
     / \
    2  7
    /     \
   1    3
     And the value to insert: 5
     You can return this binary search tree:
 
     4
     /   \
   2      7
   / \     /
  1  3   5
 
     This tree is also valid:
 
     5
     /     \
    2     7
   / \
 1   3
       \
       4
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class InsertIntoBST {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if root == nil { return TreeNode(val) }
        
        var tempRoot = root
        
        if val > root!.val {
            // The value is bigger than the current root
            // We want to insert it somewhere in the right subtree
            if let r = root!.right {
                tempRoot = self.insertIntoBST(r, val)
            }
        } else {
            // The value is smaller than the current root
            if let l = root!.left {
                tempRoot = self.insertIntoBST(l, val)
            }
        }
        
        return tempRoot
    }
}

