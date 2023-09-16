//
//  ProblemSolutionExplained.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 14/09/23.
//

import SwiftUI

struct ProblemSolutionExplained: View {
    @State var problemTitle: String
    @State var problemDescription: String
    @State var solutionDescription: String
    @State var solutionLabel: String
    @State var solutionCode: String
    @State var problemCode: String
    @State var problemDifficulty: String
    @State private var str: String = ""
    
    func withSolutionForProblem() -> String {
        switch problemCode {
        case "1":
            return String(self.str.lengthOfLongestSubstring())
            
        case "2":
            return String(MedianOfArrays.shared.findMedianSortedArrays([1,2,3,4,5], [5,6,7]))
            
        default:
            return ""
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 18) {
                    HStack {
                        Text("Problem: ")
                            .fontWeight(.heavy)
                            .font(.system(size: 24))
                        
                        Text(problemTitle)
                            .fontWeight(.heavy)
                            .font(.system(size: 24))
                        
                        Text("difficulty: \(problemDifficulty)")
                            .fontWeight(.heavy)
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Description: ")
                            .fontWeight(.heavy)
                            .font(.system(size: 24))
                        
                        Text(problemDescription)
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Solution: ")
                            .fontWeight(.heavy)
                            .font(.system(size: 24))
                        
                        Text(solutionDescription)
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Test the solution: ")
                            .fontWeight(.heavy)
                            .font(.system(size: 24))
                        TextField("Enter a String", text: $str)
                        Text("\(solutionLabel) \(self.withSolutionForProblem())")
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                        
                        Text("The code for this solution was: \n\n \(solutionCode)")
                    }
                }

            }//: SCROlLVIEW
            .padding(.top, 24)

        }
        .frame(maxWidth: .infinity)
        .padding(.leading, 24)
        .padding(.trailing, 24)
    }
}

struct ProblemSolutionExplained_Previews: PreviewProvider {
    static var previews: some View {
        ProblemSolutionExplained(problemTitle: "title",
                                 problemDescription: "description",
                                 solutionDescription: "solution_description",
                                 solutionLabel: "solution_label",
                                 solutionCode: "solution_code",
                                 problemCode: "1",
                                 problemDifficulty: "Easy")
    }
}
