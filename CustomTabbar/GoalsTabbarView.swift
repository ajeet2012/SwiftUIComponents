//
//  GoalsTabbarView.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 16/01/2025.
//

import SwiftUI

struct GoalsTabbarView: View {
    var body: some View {
        ZStack {
            Color(.themeTernary)
                .ignoresSafeArea()
            Text("Goals Tabbar View")
                .font(.fontAvenir20)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    GoalsTabbarView()
}
