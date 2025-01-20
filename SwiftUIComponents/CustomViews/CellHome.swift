//
//  CellHome.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 19/01/2025.
//

import SwiftUI

struct CellListItem : Identifiable{
    var id: CellItemId
    var title: String
}

struct CellHome: View {
    var item: CellListItem
    var body: some View {
        HStack {
            Text(item.title) // Display the item
                .font(.fontAvenir16)
                .fontWeight(.bold)
                .padding(.leading, 5)
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
                .foregroundColor(.themeSecondary)
            
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 35.0)
                .fill(.themeTernary)
                .overlay(
                    RoundedRectangle(cornerRadius: 35)
                        .stroke(Color.themeSecondary.opacity(0.6), lineWidth: 1.5)
                )
        }
    }
}

#Preview {
    CellHome(item: CellListItem(id: .customTextField, title: "Custom Text Field"))
}
