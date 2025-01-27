//
//  Strings+Ext.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 18/01/2025.
//

import Foundation
import SwiftUI
extension String {
    /// Validates if the string is a properly formatted email address
    var isValidEmail: Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}


extension String {
    /// Calculates the width of the string for a given SwiftUI `Font`
    func width(usingFont font: Font) -> CGFloat {
        // Convert SwiftUI `Font` to `UIFont`
        let uiFont: UIFont
        switch font {
        case .fontAvenir28: uiFont = UIFont(name: "Avenir", size: 28) ?? UIFont.systemFont(ofSize: 28)
        case .fontAvenir26: uiFont = UIFont(name: "Avenir", size: 26) ?? UIFont.systemFont(ofSize: 26)
        case .fontAvenir24: uiFont = UIFont(name: "Avenir", size: 24) ?? UIFont.systemFont(ofSize: 24)
        case .fontAvenir20: uiFont = UIFont(name: "Avenir", size: 20) ?? UIFont.systemFont(ofSize: 20)
        case .fontAvenir18: uiFont = UIFont(name: "Avenir", size: 18) ?? UIFont.systemFont(ofSize: 18)
        case .fontAvenir16: uiFont = UIFont(name: "Avenir", size: 16) ?? UIFont.systemFont(ofSize: 16)
        case .fontAvenir14: uiFont = UIFont(name: "Avenir", size: 14) ?? UIFont.systemFont(ofSize: 14)
        case .fontAvenir12: uiFont = UIFont(name: "Avenir", size: 12) ?? UIFont.systemFont(ofSize: 12)
        case .fontAvenir10: uiFont = UIFont(name: "Avenir", size: 10) ?? UIFont.systemFont(ofSize: 10)
        case .fontAvenir8: uiFont = UIFont(name: "Avenir", size: 8) ?? UIFont.systemFont(ofSize: 8)
        default: uiFont = UIFont.systemFont(ofSize: UIFont.systemFontSize)
        }

        // Calculate size using `NSAttributedString`
        let attributes = [NSAttributedString.Key.font: uiFont]
        let size = self.size(withAttributes: attributes)
        return size.width
    }
}
