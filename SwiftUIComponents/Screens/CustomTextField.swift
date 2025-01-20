//
//  CustomTextFieldView.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 19/01/2025.
//

import SwiftUI

struct CustomTextFieldDemoView: View {
    
    let listCustomTextfield: [CellListItem] = [CellListItem(id: .login, title: "Login"), CellListItem(id: .signUp, title: "Sign Up")]
    
    @State private var selectedItem: CellItemId? = nil
    @State private var isNavigationActive: Bool = false // State to control NavigationLink
    
    var body: some View {
        VStack {
            HStack {
                Text("SwiftUI - Custom Textfield Demo")
                    .font(.fontAvenir18)
                    .fontWeight(.bold)
                    .padding()
            }
            List {
                ForEach(listCustomTextfield) { item in
                    CellHome(item: item)
                        .onTapGesture {
                            selectedItem = item.id
                            isNavigationActive = true // Trigger navigation
                        }
                }
                .listRowSeparator(.hidden) // Hides separators for all rows
            }
            .padding(15)
            .listStyle(.plain) // Optional: Simplify list style
            .background(
                NavigationLink(
                    destination: destinationView(item: selectedItem ?? .customTextField),
                    isActive: $isNavigationActive // Use a binding for isActive
                ) {
                    EmptyView()
                }
                    .opacity(0) // Make the NavigationLink invisible
            )
        }
    }
}

#Preview {
    CustomTextFieldDemoView()
}
