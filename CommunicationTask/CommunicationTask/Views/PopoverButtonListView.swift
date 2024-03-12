//
//  PopoverButtonListView.swift
//  CommunicationTask
//
//  Created by Samar Assi on 10/03/2024.
//

import SwiftUI

struct PopoverButtonListView: View {
    @Binding var showSheet: Bool
    @State var iPhoneDetails: Bool = false
    @State var iPadDetails: Bool = false
    @State var macBookDetails: Bool = false
    @State var delegate: Delegation?
 
    
    func showProductDetails() -> String {
        if iPhoneDetails {
            return "iPhone"
        } else if iPadDetails {
            return "iPad"
        } else if macBookDetails {
            return "macBook"
        } else {
            return "all products"
        }
    }
    
    
    var body: some View {
        VStack(spacing: 20) {
            ButtonView(
                buttonText: Constant.ButtonText.IPHONE,
                buttonIcon: "iphone.gen2",
                buttonColor: "sky_blue",
                showSheet: $showSheet,
                iPhoneDetails: $iPhoneDetails,
                iPadDetails: $iPadDetails,
                macBookDetails: $macBookDetails
            )
            
            ButtonView(
                buttonText: Constant.ButtonText.IPAD,
                buttonIcon: "ipad.gen2",
                buttonColor: "light_green",
                showSheet: $showSheet,
                iPhoneDetails: $iPhoneDetails,
                iPadDetails: $iPadDetails,
                macBookDetails: $macBookDetails
            )

            ButtonView(
                buttonText: Constant.ButtonText.MAC_BOOK_PRO,
                buttonIcon: "macbook.gen2",
                buttonColor: "violate",
                showSheet: $showSheet,
                iPhoneDetails: $iPhoneDetails,
                iPadDetails: $iPadDetails,
                macBookDetails: $macBookDetails
            )
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    PopoverButtonListView(showSheet: .constant(true), handler: ContentView())
}
