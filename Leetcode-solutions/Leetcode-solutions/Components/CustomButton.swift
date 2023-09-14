//
//  CustomButton.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 14/09/23.
//

import Foundation
import SwiftUI

struct CustomButton: View {
    // MARK: - PROPERTIES
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent {
            // Content
            
            Text(rowContent)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
            
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomButton(rowLabel: "Problem",
                         rowIcon: "globe",
                         rowContent: "leetCode",
                         rowTintColor: .pink)
        }
    }
}
