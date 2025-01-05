// 242. Valid Anagram
// Difficulty: Easy
// Problem Link: https://leetcode.com/problems/valid-anagram/description/


import UIKit
import XCTest

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var charDict: [Character:Int] = [:]

        for char in s {
            charDict[char, default: 0] += 1
        }

        for char in t {
            if let count = charDict[char], count > 0 {
                charDict[char] = count - 1
            } else {
                return false
            }
        }

        return true
    }
}

class SolutionTests: XCTestCase {
    func testFirstCase (){
        let solution = Solution()
        let result = solution.isAnagram("anagram", "nagaram")
        XCTAssertEqual(result, true)
    }
    
    func testSecondCase (){
        let solution = Solution()
        let result = solution.isAnagram("rat", "car")
        XCTAssertEqual(result, false)
    }
}

SolutionTests.defaultTestSuite.run()
