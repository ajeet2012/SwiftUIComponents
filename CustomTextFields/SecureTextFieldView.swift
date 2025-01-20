//
//  SecureTextFieldView.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 20/01/2025.
//

import SwiftUI

struct SecureTextFieldView: View {
    
    let placeholder: String
    var fieldId: TextfieldId
    
    @Binding var text: String
    @Binding var errorMessage: String
    @FocusState.Binding var focusState: TextfieldId?
    
    @State private var showText: Bool = false
    @Environment(\.scenePhase) private var scenePhase
    
    var borderColor: Color {
        if !errorMessage.isEmpty {
            return .errorRed
        }
        else if focusState == fieldId {
            return .blue.opacity(0.5)
        }
        return .gray.opacity(0.5)
    }
    
    var body: some View {
        
        VStack (spacing: 5) {
            // Error Message Label
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .font(.fontAvenir12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.errorRed)
                    .padding(.leading, 25)
                    .padding(.bottom, -3)
            }
            
            // Row with textfield
            HStack {
                // Textfields
                ZStack {
                    SecureField(placeholder, text: $text)
                    //.focused($focusState, equals: .secureHide)
                        .opacity(showText ? 0 : 1)
                    TextField(placeholder, text: $text)
                    //.focused($focusState, equals: .secureShow)
                        .opacity(showText ? 1 : 0)
                }
                .padding([.leading, .trailing])
                .font(.fontAvenir16)
                
                // Eye Button
                Button(action: {
                    showText.toggle()
                }) {
                    Image(systemName: showText ? "eye.fill" : "eye.slash.fill")
                        .foregroundColor(.primary.opacity(0.5))
                }
                .padding(.trailing, 12)
            }
            .frame(height: 45)
            .background {
                RoundedRectangle(cornerRadius: 30.0)
                    .stroke(borderColor, lineWidth: errorMessage.isEmpty ? 1.0 : 1.5)
            }
            .onTapGesture {
                withAnimation(.default) {
                    focusState = fieldId
                    errorMessage = ""
                }
            }
            .onSubmit {
                withAnimation(.default) {
                    errorMessage =  Validations.checkForValidation(id: fieldId, string: text)
                }
            }
            .padding([.leading, .trailing])
        }
    }
}

struct SecureTextFieldView_Previews: PreviewProvider {
    
    @State private static var text: String = ""
    @State private static var errorMessage: String = "Error"
    @FocusState private static var focusState: TextfieldId?
    
    static var previews: some View {
        SecureTextFieldView(placeholder: "Password", fieldId: .secureHide, text: $text, errorMessage: $errorMessage, focusState: $focusState)
    }
}

