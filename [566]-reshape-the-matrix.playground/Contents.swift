import UIKit

class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let rows = mat.count
        let cols = mat[0].count

        if (rows * cols) != (r * c) {
            return mat
        }

        var res_matrix = Array(repeating: Array(repeating: 0, count: c), count: r)
        var count = 0

        for i in 0..<rows {
            for j in 0..<cols{
                res_matrix[count/c][count%c] = mat[i][j]
                count += 1
            }
        }
        
        return res_matrix
    }
}

let matrix = [[1,2,3], [4,5,6]]
let soln = Solution()
print(soln.matrixReshape(matrix, 3, 2))
