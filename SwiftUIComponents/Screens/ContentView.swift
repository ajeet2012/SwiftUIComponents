//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 19/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItem: CellItemId? = nil
    @State private var isNavigationActive: Bool = false // State to control NavigationLink
    
    let homeList: [CellListItem] = [CellListItem(id: .customTextField, title: "Custom Text Field"), CellListItem(id: .customTabbar, title: "Custom Tabbar"), CellListItem(id: .multiOption, title: "Multiple Options View")]
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Text("SwiftUI - Custom Views")
                        .font(.fontAvenir20)
                        .fontWeight(.bold)
                        .padding()
                }
                List {
                    ForEach(homeList) { item in
                        CellHome(item: item)
                            .onTapGesture {
                                selectedItem = item.id
                                isNavigationActive = true // Trigger navigation
                            }
                    }
                    .listRowSeparator(.hidden) // Hides separators for all rows
                }
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
    
    
}

#Preview {
    ContentView()
}
