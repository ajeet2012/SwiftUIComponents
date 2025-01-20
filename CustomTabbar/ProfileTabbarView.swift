//
//  ProfileTabbarView.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 16/01/2025.
//

import SwiftUI

struct ProfileTabbarView: View {
    var body: some View {
        
        ZStack {
            Color(.themeTernary)
                .ignoresSafeArea()
            Text("Profile Tabbar View")
                .font(.fontAvenir20)
                .fontWeight(.bold)
        }       
    }
}

#Preview {
    ProfileTabbarView()
}
