//
//  SuggestionViewListViewModel.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import Foundation
import SwiftUI
class SuggestionViewListViewModel : ObservableObject {
    
    @Published var suggestionInRows: [[Suggestion]] = []
    
    var suggestionList:[Suggestion] = Suggestion.suggestionItemList
    
    func findStringWidth() {
        var rowWidth: CGFloat = 0.0
        var rowItems:[Suggestion] = []
        suggestionInRows.removeAll()
        
        for item in suggestionList {
            let textWidth = item.text.width(usingFont: .fontAvenir14)
            let totalWidth = textWidth
            if rowWidth <= SuggestionConstants.suggestionListWidth {
                // Enter in a row
                rowItems.append(item)
                rowWidth =  rowWidth + totalWidth + SuggestionConstants.suggestionSpacingHorizontal
            }
            else {
                // Add all items in a row
                suggestionInRows.append(rowItems)
                
                // Reset
                rowItems.removeAll()
                rowWidth = 0
                
                // Move to next row
                rowItems.append(item)
                rowWidth =  rowWidth + totalWidth + SuggestionConstants.suggestionSpacingHorizontal
            }
        }
    }
    
    func toggleSelection(row: Int, id: UUID) {
        if let index = suggestionInRows[row].firstIndex(where: { $0.id == id }) {
            suggestionInRows[row][index].isSelected.toggle()
            suggestionInRows = suggestionInRows
        }
    }
}
