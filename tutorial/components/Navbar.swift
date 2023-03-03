//
//  Button.swift
//  tutorial
//
//  Created by Rome on 2/23/23.
//

import SwiftUI

struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color(hue: 0.0, saturation: 0.009, brightness: 0.226) : Color.white)
            .background(configuration.isPressed ? Color.white : Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
//            .cornerRadius(6.0)
//            .padding()
    }
}

struct NavbarView: View {
    @State private var username: String = ""
    @State var  showModal = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.114))
                .ignoresSafeArea()
                .frame(width: 1050, height: 100)
            HStack(alignment: .center, spacing: 150.0) {
                HStack(alignment: .center, spacing: 80.0) {
                    Text("Welcome")
                        .font(.system(size: 30))
                    TextField("Search...", text: $username)
                        .frame(width: 200, height: 40)
                }
                HStack() {
                    Button(action: {}) {
                        Text("Support")
                            .frame(maxWidth: 100, maxHeight: 30)
                        }
                            .buttonStyle(BlueButtonStyle())
                    Button(action: {}) {
                        HStack(alignment: .center, spacing: 3.0) {
                            Text("0")
                            Text("SLC")
                        }.frame(maxWidth: 80, maxHeight: 30)
                    }.buttonStyle(BlueButtonStyle())
                    Button(action: {
                        showModal = true
                    }) {
                        Text("Connect to Wallet")
                            .frame(maxWidth: 130, maxHeight: 30)
                        }
                            .buttonStyle(BlueButtonStyle())
                }
            }
            .sheet(isPresented: $showModal, content: {
                WalletConnectComponent(showConnectModal: $showModal)
            })
            .padding(.leading, 50.0)
        }
        .frame(width: 1050, height: 100)
    }
}


struct WalletConnectComponent: View {
    @Binding var showConnectModal: Bool
    
    var body: some View {
        ZStack() {
            Rectangle()
                .frame(width: 400, height: 500)
                .foregroundColor(Color(hue: 0.358, saturation: 0.105, brightness: 0.138))
                .cornerRadius(0)
            VStack(alignment: .center, spacing: 20.0) {
                Button(action: {
                    showConnectModal = false
                }) {
                    Text("Close")
                }
                .frame(width: 60, height: 30)
                Text("Will Complete Soon! Don't worry!")
                    .font(.system(size: 24))
                Text(":)")
                    .font(.system(size: 32))
            }
        }
    }
}

