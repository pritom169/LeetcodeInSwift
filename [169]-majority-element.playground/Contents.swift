import UIKit
import XCTest

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var majorityElement = 0
        var count = 0

        for num in nums {
            if count == 0 {
                majorityElement = num
                count += 1
            } else {
                count += (majorityElement == num) ? 1 : -1
            }
        }

        return majorityElement
    }
}

class SolutionTests: XCTestCase{
    func testFirstExample(){
        let solution = Solution()
        let result = solution.majorityElement([3,2,3])
        XCTAssertEqual(result, 3)
    }
    
    func testSecondExample(){
        let solution = Solution()
        let result = solution.majorityElement([2,2,1,1,1,2,2])
        XCTAssertEqual(result, 2)
    }
}

SolutionTests.defaultTestSuite.run()
