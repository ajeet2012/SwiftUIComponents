//
//  SignUpView.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 12/01/2025.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    @FocusState private var focusedField: TextfieldId?
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailID = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    
    @State private var currentField: TextfieldId = .none
    @State private var firstNameErrorMessage: String = ""
    @State private var lastNameErrorMessage: String = ""
    @State private var emailErrorMessage: String = ""
    @State private var passwordErrorMessage: String = ""
    @State private var confirmPasswordErrorMessage: String = ""
    @State private var signupErrorMessage: String = ""
    @State private var passwordMatchErrorMessage: String = ""
    
    @State private var isValidData: Bool = false
    @State private var keyboardOffset: CGFloat = 0 // Offset to adjust position
    
    
    var body: some View {
        VStack {
        
            ScrollView {
                
                // Signup pop up ----
                VStack {
                    Text(Constants.Title.signUp)
                        .font(.fontAvenir24)
                        .bold()
                        .foregroundStyle(.introTitle)
                        .padding(.top, 30)
                    
                    VStack (spacing: 15) {
                        CustomTextfieldView(placeHolder: "First name", fieldId: .firstName, text: $firstName, errorMessage: $firstNameErrorMessage, focusState: $focusedField)
                            .focused($focusedField, equals: .firstName)
                        
                        CustomTextfieldView(placeHolder: "Last name", fieldId: .lastName, text: $lastName, errorMessage: $lastNameErrorMessage, focusState: $focusedField)
                        
                        CustomTextfieldView(placeHolder: "Email Id", fieldId: .email, text: $emailID, errorMessage: $emailErrorMessage, focusState: $focusedField)
                        
                        SecureTextFieldView(placeholder: "Password", fieldId: .secureHide, text: $password, errorMessage: $passwordErrorMessage, focusState: $focusedField)
                            .focused($focusedField, equals: .secureHide)
                        
                        SecureTextFieldView(placeholder: "Confirm Password", fieldId: .confirmSecureHide, text: $confirmPassword, errorMessage: $confirmPasswordErrorMessage, focusState: $focusedField)
                            .focused($focusedField, equals: .confirmSecureHide)
                    }
                    .padding(5)
                    
                    CapsuleButtonView(title: "Register", backColor: .capsuleButtonPrimary) {
                        withAnimation {
                            self.apiFlow()
                        }
                    }
                    .padding()
                }
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.popupBackground)
                        .frame(maxWidth: .infinity)
                        .shadow(color: .popupShadow.opacity(0.2), radius: 10, x: 0, y: 5)
                )
                .padding([.bottom, .leading, .trailing], 20)
            }
            Spacer()
        }
    }
    // Hides the keyboard
    private func validation() {
        focusedField = nil
        firstNameErrorMessage = Validations.checkForValidation(id: .firstName, string: firstName)
        lastNameErrorMessage = Validations.checkForValidation(id: .lastName, string: lastName)
        emailErrorMessage = Validations.checkForValidation(id: .email, string: emailID)
        passwordErrorMessage = Validations.checkForValidation(id: .secureHide, string: password)
        confirmPasswordErrorMessage = Validations.checkForValidation(id: .confirmSecureHide, string: confirmPassword)
        
        if passwordErrorMessage.isEmpty && confirmPasswordErrorMessage.isEmpty {
            passwordErrorMessage = Validations.passwordMatch(password: password, confirmPassword: confirmPassword)
            confirmPasswordErrorMessage = Validations.passwordMatch(password: password, confirmPassword: confirmPassword)
        }        
    }
    
    private func apiFlow() -> Void {
        self.validation()
        if (firstNameErrorMessage.isEmpty && lastNameErrorMessage.isEmpty &&  emailErrorMessage.isEmpty &&  passwordErrorMessage.isEmpty &&  confirmPasswordErrorMessage.isEmpty && passwordMatchErrorMessage.isEmpty) {
            self.apiCallForSignup()
        }
    }
    private func apiCallForSignup() -> Void {
        print("Api call for Sign Up")
    }
}

#Preview {
    SignUpView()
}
