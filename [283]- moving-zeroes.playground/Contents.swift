import UIKit
import XCTest

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var lastIdx = 0
        for i in 0..<nums.count{
            guard nums[i] != 0 else {continue}
            (nums[i], nums[lastIdx]) = (nums[lastIdx], nums[i])
            lastIdx += 1
        }
    }
}

class SolutionTests: XCTestCase {
    func testFirstCase() {
        var nums = [0,1,0,3,12]
        Solution().moveZeroes(&nums)
        XCTAssertEqual(nums, [1, 3, 12, 0, 0])
    }
    
    func testSecondCase(){
        var nums = [0]
        Solution().moveZeroes(&nums)
        XCTAssertEqual(nums, [0])
    }
}

SolutionTests.defaultTestSuite.run()
