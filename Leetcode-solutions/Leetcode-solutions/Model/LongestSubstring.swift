//
//  LongestSubstring.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 14/09/23.
//

import Foundation

extension String {
    func lengthOfLongestSubstring() -> Int {
        var maxLenght: Int = 0
        var letters: [String] = []

        for letter in self {
            if var index = letters.firstIndex(where: { $0 == String(letter) }) {
                maxLenght = max(maxLenght, letters.count)

                while index > -1 {
                    letters.remove(at: index)
                    index -= 1
                }
            }
            letters.append(String(letter))
            
        }

        return max(maxLenght, letters.count)
    }
}
