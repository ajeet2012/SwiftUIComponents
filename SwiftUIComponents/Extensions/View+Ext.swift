//
//  View+Ext.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 19/01/2025.
//

import SwiftUI

extension View {
    
    func navigatePushToNext(isBackButtonHidden: Bool = false) -> some View {
        NavigationLink(destination: self.navigationBarBackButtonHidden(isBackButtonHidden)) { EmptyView() }
    }
    
    func navigatePush(whenTrue toggle: Binding<Bool>, isBackButtonHidden: Bool = false) -> some View {
        NavigationLink(destination: self.navigationBarBackButtonHidden(isBackButtonHidden), isActive: toggle) { EmptyView() }
    }
    
    func navigatePush<H: Hashable>(when binding: Binding<H>, matches: H, isBackButtonHidden: Bool = false) -> some View {
        NavigationLink(destination: self.navigationBarBackButtonHidden(isBackButtonHidden), tag: matches, selection: Binding<H?>(binding)) { EmptyView() }
    }
    
    func navigatePush<H: Hashable>(when binding: Binding<H?>, matches: H, isBackButtonHidden: Bool = false) -> some View {
        NavigationLink(destination: self.navigationBarBackButtonHidden(isBackButtonHidden), tag: matches, selection: binding) { EmptyView() }
    }
    
    // Returns the appropriate destination view based on the selected item
    func destinationView(item: CellItemId) -> some View {
        switch item {
        case .customTextField:
            return AnyView(CustomTextFieldDemoView())
        case .customTabbar:
            return AnyView(ExpenseTabBar())
        case .login:
            return AnyView(LoginView())
        case .signUp:
            return AnyView(SignUpView())
        case .multiOption:
            return AnyView(MultipleOptionSelectionViewList())
        }
    }
}
