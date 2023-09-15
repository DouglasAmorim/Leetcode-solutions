//
//  LeetcodeProblems.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 15/09/23.
//

import Foundation

class LeetcodeProblems: Codable, Equatable {
    private var problemName: String?
    private var problemDescription: String?
    private var problemCode: String?
    private var solutionDescription: String?
    private var problemDifficulty: String?
    private var problemMemory: String?
    private var problemRuntime: String?
    
    enum CodingKeys: String, CodingKey {
        case problemName
        case problemDescription
        case problemCode
        case solutionDescription
        case problemDifficulty
        case problemMemory
        case problemRuntime
    }
    
    static func == (lhs: LeetcodeProblems, rhs: LeetcodeProblems) -> Bool {
        return lhs.problemName == rhs.problemCode &&
        lhs.problemDescription == rhs.problemDescription &&
        lhs.problemCode == rhs.problemCode &&
        lhs.solutionDescription == rhs.solutionDescription &&
        lhs.problemDifficulty == rhs.problemDifficulty &&
        lhs.problemMemory == rhs.problemMemory &&
        lhs.problemRuntime == rhs.problemRuntime
    }
    
    // MARK: - PUBLIC METHODS
    func getProblemName() -> String? {
        return problemName
    }
    
    func getProblemDescription() -> String? {
        return problemDescription
    }
    
    func getProblemCode() -> String? {
        return problemCode
    }
    
    func getSolutionDescription() -> String? {
        return solutionDescription
    }
    
    func getProblemDifficulty() -> String? {
        return problemDifficulty
    }
    
    func getProblemMemory() -> String? {
        return problemMemory
    }
    
    func getProblemRuntime() -> String? {
        return problemRuntime
    }
}
