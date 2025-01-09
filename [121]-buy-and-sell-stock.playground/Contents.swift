import UIKit
import XCTest

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = prices[0]
        for i in 1..<prices.count {
            minPrice = min(minPrice, prices[i])
            maxProfit = max(maxProfit, prices[i] - minPrice)
        }

        return maxProfit
    }
}

class SolutionTests: XCTestCase {
    func testFirstExample() {
        let solution = Solution()
        let prices = [7, 1, 5, 3, 6]
        XCTAssertEqual(solution.maxProfit(prices), 5)
    }
    
    func testSecondExample() {
        let solution = Solution()
        let prices = [7, 6, 4, 3, 1]
        XCTAssertEqual(solution.maxProfit(prices), 0)
    }
}

SolutionTests.defaultTestSuite.run()
