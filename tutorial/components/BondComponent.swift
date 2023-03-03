//
//  BondComponent.swift
//  tutorial
//
//  Created by Rome on 2/27/23.
//


import SwiftUI

struct SelectBondButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 260, height: 35)
            .foregroundColor(Color.black)
            .cornerRadius(15)
            .background(Color(hue: 0.25, saturation: 0.717, brightness: 0.878))
    }
}

struct BondBlockComponent: View {
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
                HStack(alignment: .center, spacing: 15.0) {
                    VStack(alignment: .center, spacing: 10.0) {
                        HStack() {
                            Text("Available Bond")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                            //TODO Image
                        }
                        HStack() {
                            Text("2560")
                                .font(.system(size: 14))
                            Text("SLC")
                                .font(.system(size: 14))
                        }
                    }
                    VStack(alignment: .center, spacing: 10.0) {
                        HStack() {
                            Text("APR")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                            //TODO Image
                        }
                        HStack() {
                            Text("3.16")
                                .font(.system(size: 14))
                            Text("%")
                                .font(.system(size: 14))
                        }
                    }
                    VStack(alignment: .center, spacing: 10.0) {
                        Text("Ongoing Claims")
                            .font(.system(size: 13))
                            .foregroundColor(Color.gray)
                        Text("100")
                            .font(.system(size: 14))
                    }
                }
                Button(action: {}) {
                    Text("Select")
                }
                .buttonStyle(SelectBondButtonStyle())
                
            }
            .padding(25)
        }
    }
}

