//
//  ExpenseTabBar.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 16/01/2025.
//

import SwiftUI

struct ExpenseTabBar: View {
    
    @State private var selectedTab = 0
    
    let tabItems = [
        TabbarItem(image: "house", imageSelected: "house.fill", title: "Home") {
            
        },
        TabbarItem(image: "trophy", imageSelected: "trophy.fill", title: "Goals") {
            
        },
        TabbarItem(image: "chart.pie", imageSelected: "chart.pie.fill" , title: "Chart") {
            
        },
        TabbarItem(image: "person", imageSelected: "person.fill", title: "Profile") {
            
        }
    ]
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                if selectedTab == 0 {
                    
                    HomeTabbarView()
                    
                }
                else if selectedTab == 1 {
                    
                    GoalsTabbarView()
                    
                }
                else if selectedTab == 2 {
                    
                    ChartTabbarView()
                    
                }
                else if selectedTab == 3 {
                    
                    ProfileTabbarView()
                }
                
            }
            .ignoresSafeArea()            
             Spacer()
            CustomTabbarView(tabbarItems: self.tabItems, selectedTab: $selectedTab)
                .padding([.leading, .trailing], 20)
        }
        .background(.themeTernary)
        
    }
}

#Preview {
    ExpenseTabBar()
}
