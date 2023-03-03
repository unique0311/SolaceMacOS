//
//  Sidebar.swift
//  tutorial
//
//  Created by Rome on 2/23/23.
//

import SwiftUI



struct SidebarIsSelectedStyle: ButtonStyle {
    @Binding var sidebarFlag: Bool
    
    func makeBody(configuration: Self.Configuration) -> some View {
        if sidebarFlag {
            configuration.label
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color(hue: 0.65, saturation: 0.153, brightness: 0.146)]), startPoint: .leading, endPoint: .trailing))
    //            .cornerRadius(6.0)
    //            .padding()
        }
        else {
            configuration.label
                        .foregroundColor(.white)
                        .background(Color(hue: 0.65, saturation: 0.153, brightness: 0.146))
            //            .cornerRadius(6.0)
            //            .padding()
        }
    }
}

//struct SidebarButtonStyle: ButtonStyle {
//    func makeBody(configuration: Self.Configuration) -> some View {
//
//    }
//}
//

struct SidebarComponent: View {
    @Binding var isHomeSelected: Bool
    @Binding var isInsuranceSelected: Bool
    @Binding var isBondSelected: Bool
    @Binding var isClaimSelected: Bool
    @Binding var isAssessmentSelected: Bool
    @Binding var isProfileSelected: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .foregroundColor(Color(hue: 0.65, saturation: 0.153, brightness: 0.146))
                .ignoresSafeArea()
                .frame(width: 230, height: 768)
            VStack(alignment: .center, spacing: 80.0) {
                Image("logo")
                    .resizable()
                    .frame(width: 45, height: 50)
                VStack(alignment: .center, spacing: 5.0) {
                    Button(action: {
                        isHomeSelected = true
                        if isHomeSelected == true {
                            isInsuranceSelected = false
                            isBondSelected = false
                            isClaimSelected = false
                            isAssessmentSelected = false
                            isProfileSelected = false
                        }
                    }) {
                        Text("HOME")
                            .frame(width: 230, height: 50)
                            .font(.system(size: 16))
                        }
                    .buttonStyle(SidebarIsSelectedStyle(sidebarFlag: $isHomeSelected))
                    Button(action: {
                        isInsuranceSelected = true
                        if isInsuranceSelected == true {
                            isHomeSelected = false
                            isBondSelected = false
                            isClaimSelected = false
                            isAssessmentSelected = false
                            isProfileSelected = false
                        }
                    }) {
                        Text("INSURANCE")
                            .frame(width: 230, height: 50)
                            .font(.system(size: 16))
                        }
                            .buttonStyle(SidebarIsSelectedStyle(sidebarFlag: $isInsuranceSelected))
                    Button(action: {
                        isBondSelected = true
                        if isBondSelected == true {
                            isHomeSelected = false
                            isInsuranceSelected = false
                            isClaimSelected = false
                            isAssessmentSelected = false
                            isProfileSelected = false
                        }
                    }) {
                        Text("BOND")
                            .frame(width: 230, height: 50)
                            .font(.system(size: 16))
                        }
                    .buttonStyle(SidebarIsSelectedStyle(sidebarFlag: $isBondSelected))
                    Button(action: {
                        isClaimSelected = true
                        if isClaimSelected == true {
                            isHomeSelected = false
                            isInsuranceSelected = false
                            isBondSelected = false
                            isAssessmentSelected = false
                            isProfileSelected = false
                        }
                    }) {
                        Text("CLAIMS")
                            .frame(width: 230, height: 50)
                            .font(.system(size: 16))
                        }
                            .buttonStyle(SidebarIsSelectedStyle(sidebarFlag: $isClaimSelected))
                    Button(action: {
                        isAssessmentSelected = true
                        if isAssessmentSelected == true {
                            isHomeSelected = false
                            isInsuranceSelected = false
                            isBondSelected = false
                            isClaimSelected = false
                            isProfileSelected = false
                        }
                    }) {
                        Text("ASSESSMENT")
                            .frame(width: 230, height: 50)
                            .font(.system(size: 16))
                        }
                    .buttonStyle(SidebarIsSelectedStyle(sidebarFlag: $isAssessmentSelected))
                    Button(action: {
                        isProfileSelected = true
                        if isProfileSelected == true {
                            isHomeSelected = false
                            isInsuranceSelected = false
                            isBondSelected = false
                            isClaimSelected = false
                            isAssessmentSelected = false
                        }
                    }) {
                        Text("PROFILE")
                            .frame(width: 230, height: 50)
                            .font(.system(size: 16))
                        }
                            .buttonStyle(SidebarIsSelectedStyle(sidebarFlag: $isProfileSelected))
                }
            }
            .padding(.top, 50.0)
        }
    }
}
