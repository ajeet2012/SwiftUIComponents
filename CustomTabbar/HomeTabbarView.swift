//
//  HomeTabbarView.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 16/01/2025.
//

import SwiftUI

struct HomeTabbarView: View {
    
    var body: some View {
        ZStack {
            Color(.themeTernary)
                .ignoresSafeArea()
            Text("Home Tabbar View")
                .font(.fontAvenir20)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HomeTabbarView()
}
