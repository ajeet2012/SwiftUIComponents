//
//  CapsuleButtonView.swift
//  SwiftUIComponent
//
//  Created by Ajeet Sharma on 19/01/2025.
//

import SwiftUI

struct CapsuleButtonView: View {
    var title: String
    var width: CGFloat = .infinity
    var backColor: Color
    var isHideShadow:Bool = false
    var font: Font = .fontAvenir16
    
    var buttonAction: () -> Void
    var body: some View {
        Button (action: buttonAction) {
            ZStack {
                Text(title)
                    .font(font)
                    .fontWeight(.bold)
                    .frame(maxWidth: width )
                    .padding()
                    .background(backColor)
                    .foregroundStyle(.bottomTitleColors)
                    .clipShape(.capsule)
                    .shadow(color: .shadow.opacity(0.5), radius: isHideShadow ? 0 : 4)
            }
            
        }
    }
}

#Preview {
    CapsuleButtonView(title: "Login", backColor: .capsuleButtonPrimary, buttonAction: {})
}
