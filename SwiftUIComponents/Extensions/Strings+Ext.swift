//
//  Strings+Ext.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 18/01/2025.
//

import Foundation
extension String {
    /// Validates if the string is a properly formatted email address
    var isValidEmail: Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}
