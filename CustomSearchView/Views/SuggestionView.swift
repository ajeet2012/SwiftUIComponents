//
//  SuggestionView.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import SwiftUI

struct SuggestionView: View {
    var suggestion: Suggestion
    var body: some View {
        HStack {
            if suggestion.isHistory{
                Image(systemName: "clock.arrow.circlepath")
                    .resizable()
                    .frame(width: 15, height: 15)
            }
            
            Text(suggestion.text)
                .font(.fontAvenir16)
            
            if suggestion.isHistory{
                Image(systemName: "xmark.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.red.opacity(0.7))
                    .padding(.leading, 5)
            }
        }
        .frame(width: .infinity, height: .infinity)
        .padding()
        .background(
            Capsule()
                .fill(.themeTernary) // Fill color for the capsule
        )
        .overlay(
            Capsule()
                .stroke(.secondary.opacity(0.6), lineWidth: 2) // Stroke color and width
        )
    }
}

#Preview {
    SuggestionView(suggestion: Suggestion.suggestionItem)
}
