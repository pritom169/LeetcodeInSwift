import UIKit
import XCTest

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDict : [Int:Int] = [:]
        
        for (index, num) in nums.enumerated(){
            if let targetIdx = numDict[target - num]{
                return [index, targetIdx]
            } else {
                numDict[num] = index
            }
        }
        
        return []
    }
}

class SolutionTests: XCTestCase {
    func testFirstExample() {
        let solution = Solution()
        let result = solution.twoSum([2, 7, 11, 15], 9)
        XCTAssertEqual(result, [1, 0])
    }
    
    func testSecondExample(){
        let solution = Solution()
        let result = solution.twoSum([3, 2, 4], 6)
        XCTAssertEqual(result, [2, 1])
    }
    
    func testThirdExample(){
        let solution = Solution()
        let result = solution.twoSum([3,3], 6)
        XCTAssertEqual(result, [1, 0])
    }
}

SolutionTests.defaultTestSuite.run()
