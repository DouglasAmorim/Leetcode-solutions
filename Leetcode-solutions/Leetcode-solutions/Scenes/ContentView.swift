//
//  ContentView.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 14/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redirectToExplanation: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("In this app you can understand how I made to solve some 'LeetCode' problems")
                .fontWeight(.black)
                .fontDesign(.monospaced)
                .font(.system(size: 24))
            
            List {
                CustomButton(rowLabel: "Problem", rowIcon: "ellipsis.curlybraces", rowContent: "Longest Subsring", rowTintColor: .pink)
                    .sheet(isPresented: $redirectToExplanation) {
                        ProblemSolutionExplained(
                            problemTitle: "Longest Substring Without Repeating Characters",
                            problemDescription: "Given a string 's', find the length of the longest subx    string without repeating characters.",
                            solutionDescription: "First loop through each letter of the String 's'. \n Add each new letter in an 'Array' of non repeated letters. Check if the letter is already in array, if positive remove each letter from the position found until the beggining of the array. Always storage the max value between the size of array and the 'maxLenght' each time found a repeated letter. \n At the end, return de max value between 'maxLenght' and the size of the array.", solutionLabel: "The max Lenght of the text was: ")
                            .presentationDragIndicator(.visible)
                            .presentationDetents([.large])
                    }
                    .onTapGesture {
                        redirectToExplanation.toggle()
                    }
            }
            .cornerRadius(24)
                
            
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
