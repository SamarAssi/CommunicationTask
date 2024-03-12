//
//  PopoverButtonListView.swift
//  CommunicationTask
//
//  Created by Samar Assi on 10/03/2024.
//

import SwiftUI

struct PopoverButtonListView: View {
    @State var delegate: PopoverButtonListDelegation?
    @Binding var showSheet: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            ButtonView(
                buttonText: Constant.ButtonText.IPHONE,
                buttonIcon: "iphone.gen2",
                buttonColor: "sky_blue",
                action: {
                    delegate?.changeToIPhoneDevice()
                    showSheet.toggle()
                }
            )
            
            ButtonView(
                buttonText: Constant.ButtonText.IPAD,
                buttonIcon: "ipad.gen2",
                buttonColor: "light_green",
                action: {
                    delegate?.changeToIPadDevice()
                    showSheet.toggle()
                }
            )

            ButtonView(
                buttonText: Constant.ButtonText.MAC_BOOK_PRO,
                buttonIcon: "macbook.gen2",
                buttonColor: "violate",
                action: {
                    delegate?.changeToMacBookDevice()
                    showSheet.toggle()
                }
            )
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    PopoverButtonListView(delegate: nil, showSheet: .constant(false))
}
