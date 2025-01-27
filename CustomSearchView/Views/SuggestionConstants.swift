//
//  SuggestionConstants.swift
//  SwiftUIComponents
//
//  Created by Ajeet Sharma on 27/01/2025.
//

import Foundation
import UIKit


struct SuggestionConstants {
    // Suggestion View ----
    static let suggestionHistoryImageWidth: CGFloat = 15.0
    static let suggestionXMarkImageWidth: CGFloat = 15.0
    static let suggestionXMarkLeadingPadding: CGFloat = 5.0
    static let suggestionHorizontalPadding: CGFloat = 10.0
    static let suggestionVerticalPadding: CGFloat = 8.0
    
    // Suggestion List view ----
    static let suggestionListWidth: CGFloat = UIScreen.main.bounds.width - 20
    
    static let suggestionSpacingHorizontal: CGFloat = 60
    
    static let paddingHistoryView: CGFloat = SuggestionConstants.suggestionHistoryImageWidth + SuggestionConstants.suggestionHorizontalPadding
}
