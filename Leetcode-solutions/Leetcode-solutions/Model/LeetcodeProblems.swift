//
//  LeetcodeProblems.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 15/09/23.
//

import Foundation

class LeetcodeProblems: Codable, Equatable, Identifiable {
    let id = UUID()
    private var problemName: String?
    private var problemDescription: String?
    private var problemCode: String?
    private var solutionDescription: String?
    private var problemDifficulty: String?
    private var problemMemory: String?
    private var problemRuntime: String?
    private var testSolutionDescription: String?
    private var problemEnumCode: String?
    
    enum CodingKeys: String, CodingKey {
        case problemName
        case problemDescription
        case problemCode
        case testSolutionDescription
        case solutionDescription
        case problemDifficulty
        case problemMemory
        case problemRuntime
        case problemEnumCode
    }
    
    static func == (lhs: LeetcodeProblems, rhs: LeetcodeProblems) -> Bool {
        return lhs.problemName == rhs.problemCode &&
        lhs.problemDescription == rhs.problemDescription &&
        lhs.problemCode == rhs.problemCode &&
        lhs.testSolutionDescription == rhs.testSolutionDescription &&
        lhs.solutionDescription == rhs.solutionDescription &&
        lhs.problemDifficulty == rhs.problemDifficulty &&
        lhs.problemMemory == rhs.problemMemory &&
        lhs.problemRuntime == rhs.problemRuntime &&
        lhs.problemEnumCode == rhs.problemEnumCode
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
    
    func getTestSolutionDescription() -> String? {
        return testSolutionDescription
    }
    
    func getProblemEnumCode() -> String? {
        return problemEnumCode
    }
}
