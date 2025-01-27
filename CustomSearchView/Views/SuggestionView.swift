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
            Text(suggestion.text)
                .font(.fontAvenir14)
                .lineLimit(1)
        }
        .padding([.leading, .trailing], SuggestionConstants.suggestionHorizontalPadding)
        .padding([.top, .bottom], SuggestionConstants.suggestionVerticalPadding)
        .background(
            Capsule()
                .fill(suggestion.isSelected ? .blue.opacity(0.3) : .themeTernary)
        )
        .overlay(
            Capsule()
                .stroke(suggestion.isSelected ? Color.black.opacity(0.5) : .secondary.opacity(0.6), lineWidth: 1)
        )
    }
}

#Preview {
    SuggestionView(suggestion: Suggestion.suggestionItem)
}
