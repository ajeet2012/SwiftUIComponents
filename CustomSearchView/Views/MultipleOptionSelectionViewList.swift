//
//  MultipleOptionSelectionViewList.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 22/01/2025.
//

import SwiftUI

struct MultipleOptionSelectionViewList: View {
    
    @StateObject private var viewModel = MultipleOptionSelectionViewListViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Spacer()
                ForEach(0..<viewModel.optionInRows.count, id: \.self) { rowIndex in
                    
                    HStack(spacing: 8) { // HStack for each row
                        ForEach(viewModel.optionInRows[rowIndex], id: \.self) { item in
                            MultipleOptionSelectionView(option: item)
                                .onTapGesture {
                                    viewModel.toggleSelection(row: rowIndex, id: item.id)
                                }
                        }
                    }
                }
            }
            .frame(width: MultipleOptionSelectionConstants.optionListWidth)
        }
        .onAppear {
            viewModel.findStringWidth()            
        }
    }
}

#Preview {
    MultipleOptionSelectionViewList()
}
