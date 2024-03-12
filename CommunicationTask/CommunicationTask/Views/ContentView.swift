//
//  ContentView.swift
//  CommunicationTask
//
//  Created by Samar Assi on 10/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet: Bool = false


    var body: some View {
        contentsOfBody
            .sheet(isPresented: $showSheet) {
                PopoverButtonListView(showSheet: $showSheet, handler: self)
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
                showSheet: $showSheet,
                iPhoneDetails: .constant(false),
                iPadDetails: .constant(false),
                macBookDetails: .constant(false)
            )
        }
        .padding(.bottom)
        .padding(.horizontal, 50)
    }
    
    var appleProductsImage: some View {
        VStack {
            if delegate?.showProductDetails() == "iPhone" {
                Image(uiImage: UIImage.iPhone15)
                    .resizable()
            } else if delegate?.showProductDetails() == "iPad" {
                Image(uiImage: UIImage.iPadAir)
                    .resizable()
            } else if delegate?.showProductDetails() == "macBook" {
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
            if delegate?.showProductDetails() == "iPhone" {
                Text(Constant.ProductName.IPHONE)
            } else if delegate?.showProductDetails() == "iPad" {
                Text(Constant.ProductName.IPAD)
            } else if delegate?.showProductDetails() == "macBook" {
                Text(Constant.ProductName.MAC_BOOK)
            } else {
                Text(Constant.ProductName.APPLE_PRODUCT_LINE)
            }
        }
        .fontWeight(.bold)
    }
}

#Preview {
    ContentView()
}
