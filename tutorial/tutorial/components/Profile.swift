//
//  Profile.swift
//  tutorial
//
//  Created by Rome on 3/2/23.
//

import SwiftUI

struct ProfileView: View {
    @State var isSetNextPage: Bool = true
    
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
                        ScrollView() {
                            HStack(alignment: .top) {
//                                NewClaimComponent()
//                                NewClaimRightComponent()
//                                FirstProfileLeftComponent()
//                                FirstProfileRightComponent()
                                if isSetNextPage {
                                    TestProfileFirstComponent(setNextPage: $isSetNextPage)
                                    FirstProfileRightComponent()
                                } else {
                                    FirstProfileRightComponent()
                                }
                                
                                
                            }
                        }
                        .frame(height: 570)
                    }
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}

