//
//  SuggestionViewList.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import SwiftUI

struct SuggestionViewList: View {
    
    @StateObject private var viewModel = SuggestionViewListViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Spacer()
                ForEach(0..<viewModel.suggestionInRows.count, id: \.self) { rowIndex in
                    
                    HStack(spacing: 8) { // HStack for each row
                        ForEach(viewModel.suggestionInRows[rowIndex], id: \.self) { item in
                            SuggestionView(suggestion: item)
                                .onTapGesture {
                                    viewModel.toggleSelection(row: rowIndex, id: item.id)
                                }
                        }
                    }
                }
            }
            .frame(width: SuggestionConstants.suggestionListWidth)
        }
        .onAppear {
            viewModel.findStringWidth()            
        }
    }
}

#Preview {
    SuggestionViewList()
}
