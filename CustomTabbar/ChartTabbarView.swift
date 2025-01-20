//
//  ChartTabbarView.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 16/01/2025.
//

import SwiftUI

struct ChartTabbarView: View {
    var body: some View {
        
        ZStack {
            Color(.themeTernary)
                .ignoresSafeArea()
            Text("Chart Tabbar View")
                .font(.fontAvenir20)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    ChartTabbarView()
}
