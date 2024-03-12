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

    @Binding var showSheet: Bool
    @Binding var iPhoneDetails: Bool
    @Binding var iPadDetails: Bool
    @Binding var macBookDetails: Bool
    
    var body: some View {
        Button {
            showSheet.toggle()
            
            switch buttonText {
            case Constant.ButtonText.IPHONE:
                iPhoneDetails.toggle()
                
            case Constant.ButtonText.IPAD:
                iPadDetails.toggle()
                
            case Constant.ButtonText.MAC_BOOK_PRO:
                macBookDetails.toggle()
                
            default:
                break
            }
            
        } label: {
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
        showSheet: .constant(false),
        iPhoneDetails: .constant(false),
        iPadDetails: .constant(false),
        macBookDetails: .constant(false)
    )
}
