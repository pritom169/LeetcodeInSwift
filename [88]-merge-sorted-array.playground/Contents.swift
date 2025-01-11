import UIKit
import XCTest

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1

        while (i >= 0) && (j >= 0) {
            if nums1[i] > nums2[j]{
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }

        /*
        Now the question may arise, why we are looping through the
        the second loop again, why not the first one. Here is the reason:
        
        Both of the array is already sorted. If j has been looped all
        the way to this point, that means the elements that are left
        in array 1 is already been sorted.
        */
        
        while (j >= 0) {
            nums1[k] = nums2[j]
            j -= 1
            k -= 1
        }
    }
}

class SolutionTests: XCTestCase {
    func testFirstExample(){
        var array1 = [1,2,3,0,0,0]
        Solution().merge(&array1, 3, [2,5,6], 3)
        XCTAssertEqual(array1, [1,2,2,3,5,6])
    }
    
    func testSecondExample(){
        var array1 = [0]
        Solution().merge(&array1, 0, [1], 1)
        XCTAssertEqual(array1, [1])
    }
}

SolutionTests.defaultTestSuite.run()
