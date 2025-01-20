//
//  CustomTextfieldView.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 18/01/2025.
//

import SwiftUI


struct CustomTextfieldView: View {
    
    var placeHolder: String
    var fieldId: TextfieldId
    
    @Binding var text: String
    @Binding var errorMessage: String
    @FocusState.Binding var focusState: TextfieldId?
    
    var keyBoardType: UIKeyboardType = .emailAddress
    
    var borderColor: Color {
        if !errorMessage.isEmpty {
            return .errorRed
        }
        else if focusState == fieldId {
            return .blue.opacity(0.7)
        }
        return .gray.opacity(0.5)
    }
    
    private var rightButtonIcon: String {
        if text.isEmpty {
            return ""
        }
        return "xmark.circle"
    }
    
    var body: some View {
        VStack {
            // Error Message Label
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .font(.fontAvenir12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.errorRed)
                    .padding(.leading, 25)
                    .padding(.bottom, -6)
            }
            // Row with textfield
            HStack {
                // Textfields
                TextField(placeHolder, text: $text)
                    .font(.fontAvenir16)
                    .padding(.leading)
                    .keyboardType(keyBoardType)
                    .focused($focusState, equals: fieldId)
                    .disableAutocorrection(true)
                    .onTapGesture {
                        withAnimation(.default) {
                            errorMessage = ""
                            focusState = fieldId
                        }
                    }
                    .onSubmit {
                        withAnimation(.default) {
                            errorMessage =  Validations.checkForValidation(id: fieldId, string: text)
                        }
                    }
                    .frame(height: 45.0)
                // Clear Button
                Button {
                    withAnimation(.default) {
                        text = ""
                        errorMessage = ""
                    }
                } label: {
                    Image(systemName: rightButtonIcon)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.primary.opacity(0.4))
                }
                .padding(.trailing)
            }
            .frame(height: 45)
            .background {
                RoundedRectangle(cornerRadius: 30.0)
                    .stroke(borderColor, lineWidth: errorMessage.isEmpty ? 1.0 : 1.5)
            }
            .padding([.leading, .trailing])
        }
    }
}

struct CustomTextfieldView_Previews: PreviewProvider {
    @State private static var text: String = ""
    @State private static var errorMessage: String = "Error Message"
    @FocusState private static var focusState: TextfieldId?
    static var previews: some View {
        CustomTextfieldView(placeHolder: "Email Id", fieldId: .email , text: $text, errorMessage: $errorMessage, focusState: $focusState)
    }
}
