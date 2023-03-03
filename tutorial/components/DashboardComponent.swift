//
//  DashboardComponent.swift
//  tutorial
//
//  Created by Rome on 2/24/23.
//

import SwiftUI

struct StructComponentSelectedStyle: ButtonStyle {
    @Binding var flag: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        if flag {
            configuration.label
                .foregroundColor(Color.white)
                .frame(width: 110, height: 35)
                .cornerRadius(5)
                .background(Color(hue: 1.0, saturation: 0.013, brightness: 0.254))
        } else {
            configuration.label
                .frame(width: 110, height: 35)
                .foregroundColor(Color.white)
                .cornerRadius(5)
                .background(Color(hue: 0.0, saturation: 0.0, brightness: 0.114))
        }
    }
}


struct DashboardStructComponent: View {
    @Binding var isMyCoverSelected: Bool
    @Binding var isMyClaimsSelected: Bool
    @Binding var isMyBondsSelected: Bool
    @Binding var isMyVotesSelected: Bool
    @State var isMyStyleSelected: Bool = false
        var body: some View {
            HStack(alignment: .center, spacing: 100.0) {
                HStack(alignment: .center, spacing: 20.0) {
                    Button(action: {
                        isMyCoverSelected = true
                        if isMyCoverSelected == true {
                            isMyClaimsSelected = false
                            isMyBondsSelected = false
                            isMyVotesSelected = false
                        }
                        }) {
                            Text("My Cover")
                                .font(.system(size: 14))
                    }
                        .buttonStyle(StructComponentSelectedStyle(flag: $isMyCoverSelected))
                    
                    Button(action: {
                        isMyClaimsSelected = true
                        if isMyClaimsSelected == true {
                            isMyCoverSelected = false
                            isMyBondsSelected = false
                            isMyVotesSelected = false
                        }
                        }) {
                            Text("My Claims")
                                .font(.system(size: 14))
                    }
                        .buttonStyle(StructComponentSelectedStyle(flag: $isMyClaimsSelected))
                    
                    Button(action: {
                        isMyBondsSelected = true
                        if isMyBondsSelected == true {
                            isMyCoverSelected = false
                            isMyClaimsSelected = false
                            isMyVotesSelected = false
                        }
                        }) {
                            Text("My Bonds")
                                .font(.system(size: 14))
                    }
                        .buttonStyle(StructComponentSelectedStyle(flag: $isMyBondsSelected))
                    
                    Button(action: {
                        isMyVotesSelected = true
                        if isMyVotesSelected == true {
                            isMyCoverSelected = false
                            isMyClaimsSelected = false
                            isMyBondsSelected = false
                        }
                        }) {
                            Text("My Bonds")
                                .font(.system(size: 14))
                    }
                        .buttonStyle(StructComponentSelectedStyle(flag: $isMyVotesSelected))
                }
                HStack(alignment: .center, spacing: 20.0) {
                    Text("ALL")
                        .font(.system(size: 14))
                        .foregroundColor(Color.white)
                    Text("ACTIVE")
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                    Text("RECENT")
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                }
                .padding(.leading, 190.0)
            }
            //END
        }
}

struct CoverChartStruct: View {
        var body: some View {
            //Cover Chart
            VStack() {
                HStack() {
                    HStack() {
                        Text("NAME")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 50.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("STATUS")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 160.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("PRP")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 60.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("DAILY COST")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 80.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("POLICY CREDIT")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 70.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("ACTION")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 60.0)
                        //TODO Image
                    }
                }
            }

        }
}

struct CoverChartComponent: View {
        var body: some View {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 945, height: 70)
                    .foregroundColor(Color(hue: 0.678, saturation: 0.153, brightness: 0.218))
                HStack(alignment: .center, spacing: 25.0) {
//                    Rectangle()
//                        .frame(width:3, height: 20)
                    Image("three")
                        .resizable()
                        .frame(width: 7, height: 20)
                    Text("Car insurance")
                        .font(.system(size: 14))
                    ZStack() {
                        Rectangle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color.gray)
                            .cornerRadius(3)
                        //TODO Image
                        Image("car")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding(.leading, 5.0)
                    HStack(alignment: .center, spacing: 10.0) {
//                        Rectangle()
//                            .frame(width: 5, height: 25)
//                            .foregroundColor(Color.green)
                        Image("accept")
                            .resizable()
                            .frame(width: 10, height: 23)
                        Text("Active")
                            .font(.system(size: 14))
                    }
                    .padding(.leading, 30.0)
                    Text("2000")
                        .font(.system(size: 14))
                        .padding(.leading, 27.0)
                    HStack(alignment: .center) {
                        Text("9.4000")
                            .font(.system(size: 18))
                            .bold()
                        Text("SLC")
                            .font(.system(size: 18))
                    }
                    .padding(.leading, 55.0)
                    HStack() {
                        Text("9.4000")
                            .font(.system(size: 18))
                            .bold()
                        Text("SLC")
                            .font(.system(size: 18))
                    }
                    .padding(.leading, 30.0)
                    ZStack() {
                        Rectangle()
                            .frame(width: 120, height: 35)
                            .foregroundColor(Color(hue: 0.238, saturation: 0.837, brightness: 0.738))
                            .cornerRadius(3)
                        HStack(alignment: .center, spacing: 5.0) {
                            Text("Manage")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16))
//                            Rectangle()
//                                .frame(width: 30, height: 20)
                            //TODO Image
                            Image("view")
                                .resizable()
                                .frame(width: 30, height: 20)
                        }
                    }
                    .padding(.leading, 20.0)
                }
                .padding(.leading, 20.0)
            }
        }
}


struct ClaimChartStruct: View {
        var body: some View {
            //Claim Chart
            VStack() {
                HStack() {
                    HStack() {
                        Text("POLICY Type".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 50.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Status".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 75.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Claim Id".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 40.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Date".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 25.0)
                        //TODO Image
                    }
                    .padding(.trailing, 50)
                    HStack() {
                        Text("Stage".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 90.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Claim amount".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 40.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("action".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 30.0)
                        //TODO Image
                    }
                }
            }

        }
}

struct ClaimChartComponent: View {
        var body: some View {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 965, height: 70)
                    .foregroundColor(Color(hue: 0.678, saturation: 0.153, brightness: 0.218))
                HStack(alignment: .center, spacing: 20.0) {
//                    Rectangle()
//                        .frame(width:3, height: 20)
                    Image("three")
                        .resizable()
                        .frame(width: 7, height: 20)
                    Text("Car insurance")
                        .font(.system(size: 14))
                    ZStack() {
                        Rectangle()
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color.gray)
                            .cornerRadius(3)
                        //TODO Image
                        Image("car")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                    HStack(alignment: .center, spacing: 10.0) {
//                        Rectangle()
//                            .frame(width: 5, height: 25)
//                            .foregroundColor(Color.green)
                        Image("accept")
                            .resizable()
                            .frame(width: 10, height: 23)
                        Text("Accepted")
                            .font(.system(size: 14))
                    }
                    .padding(.leading, 10.0)
                    Text("10")
                        .font(.system(size: 14))
                        .padding(.leading, 10.0)
                    HStack(alignment: .center) {
                        Text("2022/06/01")
                            .font(.system(size: 14))
                            .bold()
                        Text("10:26:20")
                            .font(.system(size: 14))
                    }
                    .padding(.leading, 55.0)
                    Text("Payout")
                        .font(.system(size: 14))
                        .padding(.leading, 15.0)
                    HStack() {
                        Text("9.4000")
                            .font(.system(size: 18))
                            .bold()
                        Text("SLC")
                            .font(.system(size: 18))
                    }
                    .padding(.leading, 30.0)
                    ZStack() {
                        Rectangle()
                            .frame(width: 120, height: 35)
                            .foregroundColor(Color(hue: 0.238, saturation: 0.837, brightness: 0.738))
                            .cornerRadius(3)
                        HStack(alignment: .center, spacing: 5.0) {
                            Text("View")
                                .foregroundColor(Color.black)
                                .font(.system(size: 16))
//                            Rectangle()
//                                .frame(width: 30, height: 20)
                            //TODO Image
                            Image("view")
                                .resizable()
                                .frame(width: 30, height: 20)
                        }
                    }
                    .padding(.leading, 10.0)
                }
                .padding(.leading, 20.0)
            }
        }
}

struct BondsChartStruct: View {
        var body: some View {
            //Claim Chart
            VStack() {
                HStack() {
                    HStack() {
                        Text("Name".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 50.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Status".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 160.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("apr".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 60.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("release date".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 45.0)
                        //TODO Image
                    }
                    .padding(.trailing, 50)
                    HStack() {
                        Text("capital".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 90.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("action".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 60.0)
                        //TODO Image
                    }
                }
            }
        }
}


struct VotesChartStruct: View {
        var body: some View {
            //Claim Chart
            VStack() {
                HStack() {
                    HStack() {
                        Text("POLICY Type".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 50.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Status".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 75.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Claim Id".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 40.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Stage".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 10.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("Claim amount".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 30.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("verdict".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 30.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("final verdict".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 30.0)
                        //TODO Image
                    }
                    HStack() {
                        Text("action".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                            .padding(.leading, 30.0)
                        //TODO Image
                    }
                }
            }

        }
}
