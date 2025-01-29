//
//  MultipleOptionSelectionViewListViewModel.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import Foundation
import SwiftUI
class MultipleOptionSelectionViewListViewModel : ObservableObject {
    
    @Published var optionInRows: [[MultipleOption]] = []
    var optionList:[MultipleOption] = MultipleOption.optionList
    
    func findStringWidth() {
        var rowWidth: CGFloat = 0.0
        var rowItems:[MultipleOption] = []
        optionInRows.removeAll()
        for item in optionList {
            let textWidth = item.text.width(usingFont: .fontAvenir14)
            let totalWidth = textWidth
            if (rowWidth <= (UIScreen.main.bounds.width - 20)) {
                // Enter in a row
                rowItems.append(item)
                rowWidth =  rowWidth + totalWidth + 60
            }
            else {
                // Add all items in a row
                optionInRows.append(rowItems)
                
                // Reset to prepare new row
                rowItems.removeAll()
                rowWidth = 0
                
                // Move to next row
                rowItems.append(item)
                rowWidth =  rowWidth + totalWidth + 60
            }
        }
    }
    func toggleSelection(row: Int, id: UUID) {
        if let index = optionInRows[row].firstIndex(where: { $0.id == id }) {
            optionInRows[row][index].isSelected.toggle()
            optionInRows = optionInRows
        }
    }
}
