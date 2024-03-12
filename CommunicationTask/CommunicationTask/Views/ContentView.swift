//
//  ContentView.swift
//  CommunicationTask
//
//  Created by Samar Assi on 10/03/2024.
//

import SwiftUI

struct ContentView: View, PopoverButtonListDelegation {
    @State var showSheet: Bool = false
    @State var selectedDevice: Devices? = nil

    var body: some View {
        contentsOfBody
            .sheet(isPresented: $showSheet) {
                PopoverButtonListView(delegate: self, showSheet: $showSheet)
                    .presentationDetents([.medium, .large])
            }
    }
}

extension ContentView {
    var contentsOfBody: some View {
        VStack(spacing: 20) {
            Spacer()
            appleProductsImage
            title
            Spacer()
            Spacer()
            ButtonView(
                buttonText: Constant.ButtonText.CHOOSE_PRODUCT,
                buttonIcon: "apple.logo",
                buttonColor: "sky_blue",
                action: {
                    showSheet.toggle()
                }
            )
        }
        .padding(.bottom)
        .padding(.horizontal, 50)
    }
    
    var appleProductsImage: some View {
        VStack {
            if selectedDevice == .iPhone {
                Image(uiImage: UIImage.iPhone15)
                    .resizable()
                    .padding(40)
            } else if selectedDevice == .iPad {
                Image(uiImage: UIImage.iPadAir)
                    .resizable()
                    .padding(40)
            } else if selectedDevice == .macBook {
                Image(uiImage: UIImage.macBook)
                    .resizable()
            } else {
                Image(uiImage: UIImage.appleProducts)
                    .resizable()
            }
        }
        .scaledToFit()
    }
    
    var title: some View {
        VStack {
            if selectedDevice == .iPhone {
                Text(Constant.ProductName.IPHONE)
            } else if selectedDevice == .iPad {
                Text(Constant.ProductName.IPAD)
            } else if selectedDevice == .macBook {
                Text(Constant.ProductName.MAC_BOOK)
            } else {
                Text(Constant.ProductName.APPLE_PRODUCT_LINE)
            }
        }
        .fontWeight(.bold)
    }
}

extension ContentView {
    func changeToIPhoneDevice() {
        selectedDevice = .iPhone
    }
    
    func changeToIPadDevice() {
        selectedDevice = .iPad
    }
    
    func changeToMacBookDevice() {
        selectedDevice = .macBook
    }
}

enum Devices {
    case iPhone
    case iPad
    case macBook
}

#Preview {
    ContentView()
}
