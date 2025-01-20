//
//  CustomTabbarView.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 16/01/2025.
//

import SwiftUI

struct TabbarItem : Identifiable, Equatable {
  
    var id = UUID()
    var image: String
    var imageSelected: String
    var title: String
    var action: () -> Void
    
    static func == (lhs: TabbarItem, rhs: TabbarItem) -> Bool {
        return lhs.id == rhs.id
    }
    
}

struct CustomTabbarView: View {
    
    var tabbarItems: [TabbarItem]
    
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            ForEach(tabbarItems) { item in
                Button {
                    self.selectedTab = self.tabbarItems.firstIndex(of: item) ?? 0
                    item.action()
                } label: {
                    VStack {
                        Image(systemName: self.selectedTab == self.tabbarItems.firstIndex(of: item) ? item.imageSelected : item.image)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(self.selectedTab == self.tabbarItems.firstIndex(of: item) ? .themeSecondary :  .gray)
                        Text(item.title)
                            .font(.fontAvenir14)
                            .fontWeight(.bold)
                            .foregroundStyle(self.selectedTab == self.tabbarItems.firstIndex(of: item) ? .themeSecondary :  .gray)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 5)
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 50.0)
                .fill(.themeTernary)
                .shadow(color:.primary.opacity(0.2), radius: 5.0)
        }
    }
}

#Preview {
    CustomTabbarView(tabbarItems: [TabbarItem(image: "house", imageSelected: "house.fill", title: "Home", action: {}), TabbarItem(image: "trophy", imageSelected: "trophy.fill", title: "Goals", action: {}), TabbarItem(image: "chart.pie", imageSelected: "chart.pie.fill", title: "Chart", action: {}), TabbarItem(image: "person", imageSelected: "person.fill", title: "Profile", action: {})], selectedTab: .constant(0))
}
