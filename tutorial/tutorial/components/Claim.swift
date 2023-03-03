//
//  Claim.swift
//  tutorial
//
//  Created by Rome on 2/28/23.
//

import SwiftUI

struct ClaimView: View {
    @State var isClaimsSelectedon: Bool = true
    @State var isValidatorSelectedon: Bool = false
    @State var isAdjustorSelectedon: Bool = false
    @State var isViewSelectedon: Bool = true
    @State var isBackButtonSelectedon: Bool = false
    @State var isValidatorViewSelected: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topLeading) {
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.114))
                        .frame(width: 1050, height: 668)
                    Image("bnb_logo")
                        .resizable()
                        .opacity(0.2)
                        .frame(width: 500, height: 600)
                }
                VStack(alignment: .leading) {
                    // The case of claim selected
//                    ScrollView() {
//                        HStack(alignment: .top, spacing: 20.0) {
//                            ClaimDetailFirstComponent()
//                            ClaimDetailThirdComponent()
//                        }
//                    }
//                    .frame(height: 570)
//                    // END
                    if isViewSelectedon {
                        VStack(alignment: .leading, spacing: 15.0) {
                            if isClaimsSelectedon {
                                Text("Overview")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color.gray)
                            } else if isValidatorSelectedon {
                                Text("Earn rewards by becoming a Claims Validator")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color.gray)
                            } else if isAdjustorSelectedon {
                                Text("Earn rewards by becoming a Claims Adjustor")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color.gray)
                            }
                            
                        }
                        ClaimMainStructComponent(isClaimSelected: $isClaimsSelectedon, isValidatorSelected: $isValidatorSelectedon, isAdjustorSelected: $isAdjustorSelectedon)
                        if isClaimsSelectedon {
                            VStack(alignment: .leading) {
                                ClaimsChartStructComponent()
                                ScrollView() {
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                }
                                .frame(height: 475)
                            }
                        } else if isValidatorSelectedon {
                            ValidatorChartStructComponent()
                            ScrollView() {
                                ValidatorChartSelectedComponent()
                                ValidatorChartSelectedComponent()
                                ValidatorChartSelectedComponent()
                                ValidatorChartSelectedComponent()
                            }
                            .frame(height: 475)
                        } else if isAdjustorSelectedon {
                            HStack(alignment: .top, spacing: 40.0) {
                                ClaimAdjustorComponent()
                                ClaimAdjustorRightComponent()
                            }
                        }
                    } else {
                        if isBackButtonSelectedon {
                            VStack(alignment: .leading, spacing: 15.0) {
                                if isClaimsSelectedon {
                                    Text("Overview")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color.gray)
                                } else if isValidatorSelectedon {
                                    Text("Earn rewards by becoming a Claims Validator")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color.gray)
                                } else if isAdjustorSelectedon {
                                    Text("Earn rewards by becoming a Claims Adjustor")
                                        .font(.system(size: 16))
                                        .foregroundColor(Color.gray)
                                }
                                
                            }
                            ClaimMainStructComponent(isClaimSelected: $isClaimsSelectedon, isValidatorSelected: $isValidatorSelectedon, isAdjustorSelected: $isAdjustorSelectedon)
                            if isClaimsSelectedon {
                                VStack(alignment: .leading) {
                                    ClaimsChartStructComponent()
                                    ScrollView() {
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                        ClaimChartSelectedComponent(viewSelected: $isViewSelectedon, viewBackButtonSelected: $isBackButtonSelectedon)
                                    }
                                    .frame(height: 475)
                                }
                            } else if isValidatorSelectedon {
                                ValidatorChartStructComponent()
                                ScrollView() {
                                    ValidatorChartSelectedComponent()
                                    ValidatorChartSelectedComponent()
                                    ValidatorChartSelectedComponent()
                                    ValidatorChartSelectedComponent()
                                }
                                .frame(height: 475)
                            } else if isAdjustorSelectedon {
                                HStack(alignment: .top, spacing: 40.0) {
                                    ClaimAdjustorComponent()
                                    ClaimAdjustorRightComponent()
                                }
                            }
                        } else {
                            ScrollView() {
                                HStack(alignment: .top, spacing: 20.0) {
                                    // The case of new claim
                                    NewClaimComponent(backButtonSelected: $isBackButtonSelectedon, backViewSelected: $isViewSelectedon)
                                    NewClaimRightComponent()
                                    //END
                                }
                            }
                            .frame(height: 570)
                        }
                    }
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}
