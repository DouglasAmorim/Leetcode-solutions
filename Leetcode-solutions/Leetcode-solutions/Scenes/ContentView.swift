//
//  ContentView.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 14/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redirectToExplanation: Bool = false
    @State private var leetCodeProblems: [LeetcodeProblems] = []
    
    private func retrieveProblems() {
        FirestoreStorage.shared.retrieveLeetcodeSolution(callback: { problems in
            self.leetCodeProblems = problems
        })
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("In this app you can understand how I made to solve some 'LeetCode' problems")
                .fontWeight(.black)
                .fontDesign(.monospaced)
                .font(.system(size: 24))
            
            NavigationStack {
                List(leetCodeProblems) { problem in
                    CustomButton(
                        rowLabel: "Problem",
                        rowIcon: "ellipsis.curlybraces",
                        rowContent: problem.getProblemName() ?? "",
                        rowTintColor: .pink
                    )
                    .sheet(isPresented: $redirectToExplanation) {
                        ProblemSolutionExplained(
                            problemTitle: problem.getProblemName() ?? "",
                            problemDescription: problem.getProblemDescription() ?? "",
                            solutionDescription: problem.getSolutionDescription() ?? "",
                            solutionLabel: problem.getTestSolutionDescription() ?? "",
                            solutionCode: problem.getProblemCode() ?? "",
                            problemCode: problem.getProblemEnumCode() ?? "")
                    }
                    .onTapGesture {
                        redirectToExplanation.toggle()
                    }
                }
            }
            .padding(.leading, 24)
            .padding(.trailing, 24)
        }
        .onAppear {
            self.retrieveProblems()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
