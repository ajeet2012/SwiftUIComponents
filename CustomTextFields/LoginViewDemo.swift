//
//  LoginView.swift
//  Expense-Tracker
//
//  Created by Ajeet Sharma on 12/01/2025.
//

import SwiftUI


struct LoginView: View {
    
    @Environment(\.dismiss) var dismiss
    @FocusState private var focusedField: TextfieldId?
    
    @State private var isPushDashboard: Bool = false
    @State private var emailID = ""
    @State private var password = ""
    @State private var currentField: TextfieldId = .none
    @State private var emailErrorMessage: String = ""
    @State private var passwordErrorMessage: String = ""
    @State private var loginErrorMessage: String = ""
    @State private var isValidData: Bool = false
    @State private var keyboardOffset: CGFloat = 0
    
    var body: some View {
        VStack {
            
            VStack (spacing: 20) {
                
                Text(Constants.Title.login)
                    .font(.fontAvenir24)
                    .bold()
                    .foregroundStyle(.introTitle)
                    .padding(.top, 25)
                    .padding(.bottom, 15)
                
                VStack (spacing: 15) {
                    CustomTextfieldView(placeHolder: "Email Id", fieldId: .email, text: $emailID, errorMessage: $emailErrorMessage, focusState: $focusedField)
                    
                    SecureTextFieldView(placeholder: "Password", fieldId: .secureHide, text: $password, errorMessage: $passwordErrorMessage, focusState: $focusedField)
                        .focused($focusedField, equals: .secureHide)
                }
                CapsuleButtonView(title: "Login", backColor: .capsuleButtonPrimary, font: .fontAvenir18) {
                    withAnimation(.easeInOut) {
                        self.apiFlow()
                    }
                }
                .padding([.leading, .trailing, .bottom])
            }
            .ignoresSafeArea()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.popupBackground)
                    .frame(maxWidth: .infinity)
                    .shadow(color: .popupShadow.opacity(0.2), radius: 10, x: 0, y: 5)
            )
            .padding(30)
            
            Spacer()
        }
    }
    private func apiFlow() -> Void {
        validation()
        if (emailErrorMessage.isEmpty &&  passwordErrorMessage.isEmpty) {
            self.apiCallForLogin()
        }
    }
    private func validation() {
        focusedField = nil
        emailErrorMessage = Validations.checkForValidation(id: .email, string: emailID)
        passwordErrorMessage = Validations.checkForValidation(id: .secureHide, string: password)
    }
    private func apiCallForLogin() -> Void {
        print("Api call for login")
    }
}

#Preview {
    LoginView()
}


