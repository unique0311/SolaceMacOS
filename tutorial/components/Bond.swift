//
//  Bond.swift
//  tutorial
//
//  Created by Rome on 2/27/23.
//

import SwiftUI

struct BondView: View {
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
                VStack(alignment: .leading, spacing: 30) {
                    HStack(alignment: .top, spacing: 15.0) {
                        VStack(alignment: .leading, spacing: 15.0) {
                            Text("Overview")
                                .font(.system(size: 14))
                                .foregroundColor(Color.gray)
                            BondBlockComponent()
                            
                        }
                        
                        VStack(alignment: .trailing, spacing: 15.0) {
                            Text(" ")
                                .font(.system(size: 14))
                                .foregroundColor(Color.green)
                            BondBlockComponent()
                        }
                        
                        VStack(alignment: .trailing, spacing: 15.0) {
                            HStack() {
                                Text("all".uppercased())
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.white)
                                Text("active".uppercased())
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.gray)
                            }
                            BondBlockComponent()
                        }
                    }
                    HStack(alignment: .top, spacing: 15.0) {
                            BondBlockComponent()
                            BondBlockComponent()
                            BondBlockComponent()
                        
                    }
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}
