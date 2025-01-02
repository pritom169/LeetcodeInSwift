import UIKit

class Solution1 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        if nums.count == 1 {
            return false
        }
        
        var numSet = Set<Int>()

        for number in nums{
            if numSet.contains(number){
                return true
            } else {
                numSet.insert(number)
            }
        }
        
        return false
    }
}

/*
Time complexity: O(N)
Space complexity: O(N)
*/

class Solution2 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return (Set(nums).count != nums.count)
    }
}

/*
Time complexity: O(N)
Space complexity: O(N)
 
In the second solution, we are just using the built in function of swift
which will compute much faster.
*/
