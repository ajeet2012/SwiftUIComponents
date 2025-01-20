//
//  Enums.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 19/01/2025.
//

import Foundation


// Enum to identify fields
public enum TextfieldId: Hashable {
    case email
    case firstName
    case lastName
    case secureShow
    case secureHide
    case confirmSecureShow
    case confirmSecureHide
    case none
}

public enum CellItemId: String {
    case customTextField
    case customTabbar
    case login
    case signUp
}
