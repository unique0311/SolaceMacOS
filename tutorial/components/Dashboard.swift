//
//  Dashboard.swift
//  tutorial
//
//  Created by Rome on 2/24/23.
//

import SwiftUI

struct DashboardView: View {
    @State var isMyCoverSelectedon: Bool = true
    @State var isMyClaimSelectedon: Bool = false
    @State var isMyBondSelectedon: Bool = false
    @State var isMyVoteSelectedon: Bool = false
    
    @State private var showToast = false
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

                VStack(alignment: .leading, spacing: 25) {
                    HStack(alignment: .top, spacing: 15.0) {
                        VStack(alignment: .leading, spacing: 15.0) {
                            Text("Overview")
                                .font(.system(size: 16))
                                .foregroundColor(Color.gray)
                            OverviewThirdComponent()
                            //
                            //
                            
                        }
                        VStack(alignment: .leading, spacing: 15.0) {
                            Text("My Rewards")
                                .font(.system(size: 16))
                            RewardFirstComponent()
                            RewardSecondComponent()
                        }
                        VStack(alignment: .trailing, spacing: 15.0) {
                            Text("Get Insured")
                                .font(.system(size: 16))
                                .foregroundColor(Color.green)
                            GetInsuredComponent()
                        }
                        VStack(alignment: .trailing, spacing: 15.0) {
                            Text(" ")
                                .font(.system(size: 16))
                                .foregroundColor(Color.green)
                            marketViewComponent()
                        }
                    }
                    DashboardStructComponent(isMyCoverSelected: $isMyCoverSelectedon, isMyClaimsSelected: $isMyClaimSelectedon, isMyBondsSelected: $isMyBondSelectedon, isMyVotesSelected: $isMyVoteSelectedon)
                    if isMyCoverSelectedon {
                        VStack(alignment: .leading) {
                            CoverChartStruct()
                            ScrollView() {
                                CoverChartComponent()
                                CoverChartComponent()
                                CoverChartComponent()
                                CoverChartComponent()
                                CoverChartComponent()
                                CoverChartComponent()
                            }
                            .frame(height: 150)
                        }
                    } else if isMyClaimSelectedon {
                        ClaimChartStruct()
                        ClaimChartComponent()
                    } else if isMyBondSelectedon {
                        BondsChartStruct()
                    } else if isMyVoteSelectedon {
                        VotesChartStruct()
                    }
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}

