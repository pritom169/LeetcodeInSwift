// 387. First Unique Character in a String
// Difficulty: Easy
// Problem Link: https://leetcode.com/problems/first-unique-character-in-a-string/

import UIKit
import XCTest

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var charDict : [Character:Int] = [:]

        for char in s {
            charDict[char, default: 0] += 1
        }

        for (index, char) in s.enumerated(){
            if charDict[char] == 1{
                return index
            }
        }
        return -1
    }
}

class SolutionTests: XCTestCase {
    func firstTestCase() {
        let solution = Solution()
        let result = solution.firstUniqChar("leetcode")
        XCTAssertEqual(result, 0)
    }
    
    func secondTestCase() {
        let solution = Solution()
        let result = solution.firstUniqChar("loveleetcode")
        XCTAssertEqual(result, 2)
    }
    
    func thirdTestCase() {
        let solution = Solution()
        let result = solution.firstUniqChar("")
        XCTAssertEqual(result, -1)
    }
}

SolutionTests.defaultTestSuite.run()
