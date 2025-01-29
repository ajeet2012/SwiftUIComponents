//
//  MultipleOptionSelectionView.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import SwiftUI

struct MultipleOptionSelectionView: View {
    var option: MultipleOption
    var body: some View {
        HStack {
            Text(option.text)
                .font(.fontAvenir14)
                .lineLimit(1)
        }
        .padding([.leading, .trailing], MultipleOptionSelectionConstants.optionHorizontalPadding)
        .padding([.top, .bottom], MultipleOptionSelectionConstants.optionVerticalPadding)
        .background(
            Capsule()
                .fill(option.isSelected ? .blue.opacity(0.3) : .themeTernary)
        )
        .overlay(
            Capsule()
                .stroke(option.isSelected ? Color.black.opacity(0.5) : .secondary.opacity(0.6), lineWidth: 1)
        )
    }
}

#Preview {
    MultipleOptionSelectionView(option: MultipleOption.option)
}
