//
//  ButtonView.swift
//  CommunicationTask
//
//  Created by Samar Assi on 10/03/2024.
//

import SwiftUI

struct ButtonView: View {
    var buttonText: String
    var buttonIcon: String
    var buttonColor: String
    var action: () -> Void

    
    var body: some View {
        Button(action: action) {
            Label {
                Text(buttonText)
            } icon: {
                Image(systemName: buttonIcon)
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(Color(buttonColor).opacity(0.3))
            .foregroundStyle(Color(buttonColor))
            .cornerRadius(10)
            .fontWeight(.bold)
        }
    }
}

#Preview {
    ButtonView(
        buttonText: Constant.ButtonText.CHOOSE_PRODUCT,
        buttonIcon: "apple.logo",
        buttonColor: "sky_blue",
        action: {}
    )
}
