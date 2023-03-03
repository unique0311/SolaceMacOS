//
//  ToastComponent.swift
//  tutorial
//
//  Created by Rome on 2/28/23.
//

import SwiftUI

struct XmarkStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.gray : Color.black)
            .background(Color.red)
//            .cornerRadius(6.0)
//            .padding()
    }
}

enum FancyToastStyle {
    case TransactionSuccess
    case TransactionFailed
    case TransactionPending
    case SubmissionSuccess
    case SubmissionFalied
}

extension FancyToastStyle {
    var themeColor: Color {
        switch self {
            case .TransactionSuccess: return Color.green
            case .TransactionFailed: return Color.red
            case .TransactionPending: return Color.orange
            case .SubmissionSuccess: return Color.green
            case .SubmissionFalied: return Color.red
        }
    }
    
    var iconFileName: String {
        switch self {
        case .TransactionSuccess: return "checkmark.circle"
        case .TransactionFailed: return "info.circle"
        case .TransactionPending: return "exclamationmark.triangle"
        case .SubmissionSuccess: return "checkmark.circle"
        case .SubmissionFalied: return "info.circle"
        }
    }
}

struct FancyToast: Equatable {
    var type: FancyToastStyle
    var title: String
    var message: String
    var duration: Double = 3
}

struct FancyToastView: View {
    var type: FancyToastStyle
    var title: String
    var message: String
    var onCancelTapped: (() -> Void)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 300, height: 25)
                HStack(alignment: .center, spacing: 90.0) {
                    HStack(alignment: .center, spacing: 5.0) {
                        Image(systemName: type.iconFileName)
                            .foregroundColor(Color.black)
                        Text(title)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(Color.black)
                    }
                    Button {
                        //TODO
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .buttonStyle(XmarkStyle())
                }
                .padding(.leading, 10)
                .padding(3)
            }
            ZStack(alignment: .topLeading){
                Rectangle()
                    .foregroundColor(Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                    .frame(width: 300, height: 55)
                VStack(alignment: .leading, spacing: 5.0) {
                    Text(message)
                        .font(.system(size: 14))
                    HStack() {
                        Text("View on Etherscan")
                            .font(.system(size: 13))
                            .foregroundColor(Color.gray)
                    }
                }
                .padding(.leading, 28)
                .padding(5)
            }
        }
        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 1)
//        }
//        .background(Color.white)
//        .overlay(
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 6)
//                .clipped()
//            , alignment: .leading
//        )
//        .frame(minWidth: 0, maxWidth: .infinity)
//        .cornerRadius(8)
//        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 1)
//        .padding(.horizontal, 16)
    }
}

struct FancyToastModifier: ViewModifier {
    @Binding var toast: FancyToast?
    @State private var workItem: DispatchWorkItem?
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                ZStack {
                    mainToastView()
                        .offset(x: 300, y: -500)
                }
                    .animation(.spring(), value: toast)
            )
            .onChange(of: toast) {
                value in showToast()
            }
    }
    
    @ViewBuilder func mainToastView() -> some View {
        if let toast = toast {
            VStack {
                Spacer()
                FancyToastView(
                    type: toast.type,
                    title: toast.title,
                    message: toast.message) {
                        dismissToast()
                    }
            }
            .transition(.move(edge: .bottom))
        }
    }
    
    private func showToast() {
        guard let toast = toast else {
            return
        }
        
//        UIImpactFeedbackGenerator(style: .light).impactOccurred()
        
        if toast.duration > 0 {
            workItem?.cancel()
            
            let task = DispatchWorkItem {
                dismissToast()
            }
            
            workItem = task
            DispatchQueue.main.asyncAfter(deadline: .now() + toast.duration, execute: task)
        }
    }
    
    private func dismissToast() {
        withAnimation {
            toast = nil
        }
        
        workItem?.cancel()
        workItem = nil
    }
}

extension View {
    func toastView(toast: Binding<FancyToast?>) -> some View {
        self.modifier(FancyToastModifier(toast: toast))
    }
}

