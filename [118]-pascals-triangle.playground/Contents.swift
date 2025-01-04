import UIKit
import XCTest

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var mat: [[Int]] = [[1]]

        for i in 1..<numRows {
            var rowMat = Array(repeating: 1, count: i + 1)
            rowMat[0] = 1
            rowMat[i] = 1

            for j in 1..<i {
                rowMat[j] = mat[i-1][j-1] + mat[i-1][j]
            }
            mat.append(rowMat)
        }
        return mat
    }
}

class SolutionTests: XCTestCase {
    func testWithOneRow() {
        let solution = Solution()
        let result = solution.generate(1)
        XCTAssertEqual(result, [[1]])
    }
    
    func testWithTwoRows() {
        let solution = Solution()
        let result = solution.generate(2)
        XCTAssertEqual(result, [[1], [1,1]])
    }
    
    func testGenerateWithFiveRows() {
        let solution = Solution()
        let result = solution.generate(5)
        XCTAssertEqual(result, [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
    }
}

SolutionTests.defaultTestSuite.run()
