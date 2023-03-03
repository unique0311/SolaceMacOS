//
//  InsuranceComponent.swift
//  tutorial
//
//  Created by Rome on 2/27/23.
//

import SwiftUI

struct SelectButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 260, height: 35)
            .foregroundColor(Color.black)
            .cornerRadius(7)
            .background(Color(hue: 0.25, saturation: 0.717, brightness: 0.878))
    }
}

struct InsuranceBlockComponent: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .frame(width: 313, height: 250)
                .foregroundColor(Color(red: 0.114, green: 0.125, blue: 0.141))
                .cornerRadius(5)
            VStack(alignment: .leading, spacing: 15.0) {
                HStack(alignment: .center, spacing: 60.0) {
                    HStack(alignment: .center, spacing: 5.0) {
                        ZStack() {
                            Rectangle()
                                .frame(width: 35, height: 35)
                                .foregroundColor(Color.gray)
                            //TODO Image
                            Image("car")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        Text("Car Cover")
                            .font(.system(size: 18))
                        //TODO Image
                        
                    }
                    VStack(alignment: .trailing, spacing: 5.0) {
                        Text("4551")
                            .font(.system(size: 26))
                        HStack() {
                            Text("Total Policies")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                            //TODO Image
                        }
                    }
                }
                .padding(.bottom, 25.0)
                HStack(alignment: .center, spacing: 25.0) {
                    VStack(alignment: .center, spacing: 10.0) {
                        HStack() {
                            Text("Pool Status")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                            //TODO Image
                        }
                        Text("Active")
                            .font(.system(size: 14))
                    }
                    VStack(alignment: .center, spacing: 10.0) {
                        HStack() {
                            Text("Daily Cost")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                            //TODO Image
                        }
                        HStack() {
                            Text("0")
                                .font(.system(size: 14))
                            Text("SLC")
                                .font(.system(size: 14))
                        }
                    }
                    VStack(alignment: .center, spacing: 10.0) {
                        Text("Cover Details")
                            .font(.system(size: 13))
                            .foregroundColor(Color.gray)
                        Text("Learn more")
                            .font(.system(size: 14))
                    }
                }
                Button(action: {}) {
                    Text("Select")
                }
                .buttonStyle(SelectButtonStyle())
                
            }
            .padding(25)
        }
    }
}


struct InsuranceBlockAddComponent: View {
    var body: some View {
        ZStack() {
            Rectangle()
                .strokeBorder(style: StrokeStyle(lineWidth: 1.5, dash: [5]))
                .foregroundColor(Color.gray)
                .cornerRadius(5)
                .frame(width: 313, height: 250)
            VStack(alignment: .center, spacing: 10.0) {
                Text("+")
                    .font(.system(size: 80))
                    .foregroundColor(Color.gray)
                Text("Add Pool")
                    .font(.system(size: 16))
                    .foregroundColor(Color.gray)
            }
        }
    }
}
