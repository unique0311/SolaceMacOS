//
//  Profile.swift
//  tutorial
//
//  Created by Rome on 3/2/23.
//

import SwiftUI

struct ProfileView: View {
    
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
                    }
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}

