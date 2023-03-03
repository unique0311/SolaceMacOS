//
//  Welcome.swift
//  tutorial
//
//  Created by Rome on 2/23/23.
//

import SwiftUI

struct WelcomeView: View {
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
                    Text("Being a member gives you the ability to buy cover, earn rewards from risk pools, staking, governance & claim validation.")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 14))
                    HStack(alignment: .top, spacing: 15.0) {
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Membership")
                                .bold()
                                .font(.system(size: 16))
                            
                            MembershipMutualComponent()
                            MembershipCostComponent()
                            MembershipKYCComponent()
                                .padding(.bottom, 10.0)
                            MembershipPayComponent()

                        }
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Overview")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 16))
                            OverviewFirstComponent()
                            OverviewSecondComponent()
                        }
                    }
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}
