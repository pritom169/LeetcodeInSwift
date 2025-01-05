// 383. Ransom Note
// Difficulty: Easy
// Problem Link: https://leetcode.com/problems/ransom-note/

import UIKit
import XCTest

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var charDict:[Character:Int] = [:]

        for char in magazine {
            charDict[char, default: 0] += 1
        }

        for char in ransomNote {
            if let count = charDict[char], count > 0{
                charDict[char] = count - 1
            } else {
                return false
            }
        }

        return true
    }
}

class SolutionTests: XCTestCase {
    func testFirstCase() {
        let solution = Solution()
        let result = solution.canConstruct("a", "b")
        XCTAssertEqual(result, false)
    }
    
    func testSecondCase() {
        let solution = Solution()
        let result = solution.canConstruct("aa", "ab")
        XCTAssertEqual(result, false)
    }
    
    func testThirdCase() {
        let solution = Solution()
        let result = solution.canConstruct("aa", "aab")
        XCTAssertEqual(result, true)
    }
}

SolutionTests.defaultTestSuite.run()
