//
//  ToastView.swift
//  tutorial
//
//  Created by Rome on 2/28/23.
//

import SwiftUI

struct ToastView: View {
    @State private var toast: FancyToast? = nil
    var body: some View {
        VStack {
            Button {
                toast = FancyToast(
                    type: .TransactionSuccess,
                    title: "Transaction Successful",
                    message: "50 SLC Deposited"
                )
            } label: {
                Text("Run")
            }
        }
        .toastView(toast: $toast)
    }
}
