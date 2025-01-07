import UIKit
import XCTest

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var longest : Int = 0
        var startIndex: Int = 0
        var charMap : [Character:Int] = [:]

        for (index, char) in s.enumerated() {
            if let foundIndex = charMap[char] {
                startIndex = max(foundIndex + 1, startIndex)
            }

            longest = max(longest, index - startIndex + 1)
            charMap[char] = index
        }
        return longest
    }
}

class SolutionTests: XCTestCase {
    func testFirstExample() {
        let solution = Solution()
        let result = solution.lengthOfLongestSubstring("abcabcbb")
        XCTAssertEqual(result, 3)
    }
    
    func testSecondExample() {
        let solution = Solution()
        let result = solution.lengthOfLongestSubstring("bbbbb")
        XCTAssertEqual(result, 1)
    }
    
    func testThirdExample() {
        let solution = Solution()
        let result = solution.lengthOfLongestSubstring("pwwkew")
        XCTAssertEqual(result, 3)
    }
}

SolutionTests.defaultTestSuite.run()
