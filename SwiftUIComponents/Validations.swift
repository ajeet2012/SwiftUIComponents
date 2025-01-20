//
//  Validations.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 14/01/2025.
//

import Foundation


struct  Validations {
    
    
    static func checkForValidation(id : TextfieldId, string: String) -> String {
        switch id {
        case .email:
            return Validations.emailIDValidation(emailId: string)
        case .secureHide, .secureShow, .confirmSecureHide, .confirmSecureShow:
            return Validations.passwordValidation(password: string)
        case .firstName, .lastName:
            return Validations.nameValidation(fullName: string, id: id)
        case .none:
            return ""
        }
    }
    
    static func nameValidation(fullName: String, id : TextfieldId) -> String {
        if fullName.isEmpty {
            return "Please enter \(id == .firstName ? "first" : "last") name"
        }
        else if fullName.count < 3 {
            return "Please enter valid \(id == .firstName ? "first" : "last") name"
        }
        return ""
    }
    
    static func emailIDValidation(emailId: String) -> String {
        if emailId.isEmpty {
            return "Please enter email id"
        }
        else if !emailId.isValidEmail {
            return "Please enter valid email id"
        }
        return ""
    }
    
    static func passwordValidation(password: String) -> String {
        if password.isEmpty {
            return "Please enter password"
        }
        else if password.count < 8 {
            return "Please enter valid password"
        }
        return ""
    }
    
    
    static func passwordMatch(password : String, confirmPassword: String) -> String {

        if password.isEmpty || confirmPassword.isEmpty {
            return ""
        }
        else if !password.elementsEqual(confirmPassword) {
            return "Looks like your passwords aren’t twins. Let’s fix that!"
        }
        return ""
    }
}
