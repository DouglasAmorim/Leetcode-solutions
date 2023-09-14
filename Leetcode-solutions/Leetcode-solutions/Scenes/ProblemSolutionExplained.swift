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
    @State private var str: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            
            HStack {
                Text("Problem: ")
                    .fontWeight(.heavy)
                    .font(.system(size: 24))
                
                Text(problemTitle)
                    .fontWeight(.heavy)
                    .font(.system(size: 24))
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
                Text("\(solutionLabel) \(str.lengthOfLongestSubstring())")
                    .fontWeight(.medium)
                    .font(.system(size: 16))
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct ProblemSolutionExplained_Previews: PreviewProvider {
    static var previews: some View {
        ProblemSolutionExplained(problemTitle: "title",
                                 problemDescription: "description",
                                 solutionDescription: "solution_description",
                                 solutionLabel: "solution_label")
    }
}
