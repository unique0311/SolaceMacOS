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
                    // The case of new claim
//                        ScrollView() {
//                            HStack(alignment: .top, spacing: 20.0) {
//                                NewClaimComponent()
//                                NewClaimRightComponent()
//                            }
//                        }
//                        .frame(height: 570)
                    // END
                    
                    
                    // The case of claim selected
//                    ScrollView() {
//                        HStack(alignment: .top, spacing: 20.0) {
//                            ClaimDetailFirstComponent()
//                            ClaimDetailThirdComponent()
//                        }
//                    }
//                    .frame(height: 570)
//                    // END
                    
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
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
                                ClaimChartSelectedComponent()
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
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}
