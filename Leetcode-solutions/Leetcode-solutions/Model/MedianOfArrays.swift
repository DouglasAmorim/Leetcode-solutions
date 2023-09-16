//
//  MedianOfArrays.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 16/09/23.
//

import Foundation

class MedianOfArrays {
    static let shared = MedianOfArrays()
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var n: [Int] = nums2
        for num in nums1 {
            n.append(num)
        }

        n.sort()

        let i = n.count % 2

        if i > 0 {
            return Double(n[(n.count/2)])
        } else {
            return Double(n[(n.count/2) - 1] + n[(n.count/2)]) / 2
        }
    }
}
