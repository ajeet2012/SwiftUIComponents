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
                    .frame(width: SuggestionConstants.suggestionHistoryImageWidth, height: SuggestionConstants.suggestionHistoryImageWidth)
            }
            
            Text(suggestion.text)
                .font(.fontAvenir14)
                .lineLimit(1)
            
            if suggestion.isHistory{
                Image(systemName: "xmark.circle")
                    .resizable()
                    .frame(width: SuggestionConstants.suggestionXMarkImageWidth, height: SuggestionConstants.suggestionXMarkImageWidth)
                    .foregroundColor(.red.opacity(0.7))
                    .padding(.leading, SuggestionConstants.suggestionXMarkLeadingPadding)
            }
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
