//
//  Insurance.swift
//  tutorial
//
//  Created by Rome on 2/27/23.
//

import SwiftUI


struct InsuranceView: View {
    
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
                            InsuranceBlockComponent()
                            
                        }
                        
                        VStack(alignment: .trailing, spacing: 15.0) {
                            Text(" ")
                                .font(.system(size: 14))
                                .foregroundColor(Color.green)
                            InsuranceBlockComponent()
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
                            InsuranceBlockComponent()
                        }
                    }
                    HStack(alignment: .top, spacing: 15.0) {
                            InsuranceBlockComponent()
                            InsuranceBlockComponent()
                            InsuranceBlockAddComponent()
                        
                    }
                }
                .padding(40)
            }
            .frame(width: 1050, height: 668)
        }
    }
}
