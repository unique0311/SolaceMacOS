//
//  membershipComponent.swift
//  tutorial
//
//  Created by Rome on 2/23/23.
//

import SwiftUI

struct MembershipMutualComponent: View {
    @State private var overRect = false
    var textTitle = "You own of the mutual"
    var textMain = "You can buy cover and earn SLC by helping run the platform, including voting on claims, investing \nin risk pools and voting on proposals."

    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                .ignoresSafeArea()
                .frame(width: 700, height: 100)
                .onHover{
                    over in
                    overRect = over
                }
            HStack(alignment: .top, spacing: 20.0) {
                ZStack() {
                    Rectangle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.gray)
                    Image("membership1")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
                VStack(alignment: .leading, spacing: 3.0) {
                    Text(textTitle)
                        .foregroundColor(Color.white)
                        .bold()
                        .font(.system(size: 16))
                    Text(textMain)
                        .font(.system(size: 12))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.005, brightness: 0.502))
                }
            }
            .padding(20.0)
        }
    }
}

struct MembershipCostComponent: View {
    @State private var overRect = false
    var textTitle = "Membership Cost"
    var textMain = "Membership gives you rights to the assets of the platform and a involves one-off membership fee of \n0.002ETH."

    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                .ignoresSafeArea()
                .frame(width: 700, height: 100)
                .onHover{
                    over in
                    overRect = over
                }
            HStack(alignment: .top, spacing: 20.0) {
                ZStack() {
                    Rectangle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.gray)
                    Image("membership2")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
                VStack(alignment: .leading, spacing: 3.0) {
                    Text(textTitle)
                        .foregroundColor(Color.white)
                        .bold()
                        .font(.system(size: 16))
                    Text(textMain)
                        .font(.system(size: 12))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.005, brightness: 0.502))
                }
            }
            .padding(20.0)
        }
    }
}

struct MembershipKYCComponent: View {
    @State private var overRect = false
    var textTitle = "KYC / AML"
    var textMain = "To become a member, you will need to verify your identity using our Know-Your-Customer / Anti-Money-\nLaundering process. If this fails, your memebership fee will be refunded to you."

    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                .ignoresSafeArea()
                .frame(width: 700, height: 100)
                .onHover{
                    over in
                    overRect = over
                }
            HStack(alignment: .top, spacing: 20.0) {
                ZStack() {
                    Rectangle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.gray)
                    Image("membership3")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                }
                VStack(alignment: .leading, spacing: 3.0) {
                    Text(textTitle)
                        .foregroundColor(Color.white)
                        .bold()
                        .font(.system(size: 16))
                    Text(textMain)
                        .font(.system(size: 12))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.005, brightness: 0.502))
                }
            }
            .padding(20.0)
        }
    }
}

struct MembershipPayComponent: View {
    @State private var isOn = false
        var body: some View {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .foregroundColor(Color(red: 0.124, green: 0.126, blue: 0.146))
                    .ignoresSafeArea()
                    .frame(width: 700, height: 100)
                VStack(alignment: .leading) {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .foregroundColor(Color(red: 0.226, green: 0.224, blue: 0.224))
                            .ignoresSafeArea()
                            .frame(width: 700, height: 45)
                        HStack(alignment: .center, spacing: 390.0) {
                            HStack(alignment: .center) {
                                Text("0.0020")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                                    .padding(.trailing, 5.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 90)
                                
                                ZStack() {
                                    Rectangle()
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.342))
                                        .frame(width: 70, height: 30)
                                    
                                    Text("ETH")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 20))
                                }
                                .padding(.bottom, 0.0)
                                
                            }
                            HStack() {
                                Text("~$3.06")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 24))
                            }
                            
                        }
                        .padding(.leading, 20.0)
                    }
                    ZStack() {
                        
                        HStack(alignment: .center, spacing: 200) {
                            HStack(spacing: 1.0) {
                                Toggle(isOn: $isOn) {
                                            Text("I am accept Solace's")
                                        }
                                        .toggleStyle(.checkbox)
                                    
                                Text("DAO Member's aggreement.")
                                    .foregroundColor(Color.green)
                                    .font(.system(size: 12))
                                    .underline()
                            }
                            HStack() {
                                Button(action: {}) {
                                    Text("Pay membership Fees")
                                    
                                }
                                .frame(width: 150, height: 30)
                                .background(Color.green)
                                
                            }
                            
                        }.padding(.leading, 15.0)
                            .padding(.top, 5.0)
                    }
                    
                    
                }
            }
        }
}

struct OverviewFirstComponent: View {
    @State private var overRect = false
        var body: some View {
            ZStack() {
                Rectangle()
                    .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                    .ignoresSafeArea()
                    .frame(width: 250, height: 250)
                    .onHover{
                        over in
                        overRect = over
                    }
                VStack() {
                    HStack(alignment: .top, spacing: 20.0) {
                        VStack(alignment: .leading, spacing: 3.0) {
                            Text("234504")
                                .foregroundColor(Color.white)
                                .font(.system(size: 30))
                            Text("Total Members")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 14))
                        }
                        ZStack() {
                            Rectangle()
                                .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.13))
                                .frame(width: 95, height: 85)
                            VStack(spacing: 6.0) {
                                Text("5000")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 28))
                                Text("Active Cover")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 13))
                            }
                        }
                    }
                    VStack(alignment: .leading) {
                        Text("Total Premium")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        HStack(alignment: .top){
                            Text("3,430,003")
                                .foregroundColor(Color.white)
                                .font(.system(size: 40))
                            Text("USD")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 13))
                        }
                    }
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("SLC/USD")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        HStack(alignment: .center, spacing: 45.0) {
                            HStack(alignment: .center, spacing: 2.0){
                                Text("2.7995")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 14))
                                    .padding(.leading)
                                Text(" USD")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 13))
                                Text("+ 12%")
                                    .foregroundColor(Color.green)
                                    .font(.system(size: 13))
                            }
                            Button(action: {}) {
                                Text("Buy")
                            }
                            .border(Color.blue)
    //                        .background(none)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        }
                        
                    }
                }
            }
        }
}

struct OverviewSecondComponent: View {
    @State private var overRect = false
        var body: some View {
            ZStack() {
                Rectangle()
                    .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                    .ignoresSafeArea()
                    .frame(width: 250, height: 250)
                    .onHover{
                        over in
                        overRect = over
                    }
                VStack(alignment: .leading, spacing: 20.0) {
                    HStack(alignment: .center, spacing: 30.0) {
                        Text("Markets")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18))
                        
                        HStack() {
                            Text("USD")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 13))
                            Text("EUR")
                                .foregroundColor(Color.white)
                                .font(.system(size: 13))
                            Text("BTC")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 13))
                        }
                    }
                    HStack(spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 5.0) {
                            HStack() {
                                Text("ETH/EUR")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                                Text("-1.14%")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                            }
                            HStack() {
                                Text("1,087.91")
                                    .font(.system(size: 14))
                                Text("EUR")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.gray)
                            }
                        }
                        //Image
                        Image("graph1")
                            .resizable()
                            .frame(width: 70, height: 30)
                    }
                    HStack(spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 5.0) {
                            HStack() {
                                Text("SLC/EUR")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                                Text("-0.48%")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                            }
                            HStack() {
                                Text("197.48")
                                    .font(.system(size: 14))
                                Text("EUR")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.gray)
                            }
                        }
                        //Image
                        Image("graph2")
                            .resizable()
                            .frame(width: 70, height: 30)
                    }
                    HStack(spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 5.0) {
                            HStack() {
                                Text("BTC/EUR")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                                Text("1.75%")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                            }
                            HStack() {
                                Text("11,435.18")
                                    .font(.system(size: 14))
                                Text("EUR")
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.gray)
                            }
                        }
                        //Image
                        Image("graph3")
                            .resizable()
                            .frame(width: 70, height: 30)
                    }
                }
                .padding(20.0)
                
            }
    }
}

struct OverviewThirdComponent: View {
    @State private var overRect = false
        var body: some View {
            //OverviewThirdComponent
            ZStack() {
                Rectangle()
                    .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                    .ignoresSafeArea()
                    .frame(width: 220, height: 250)
                    .onHover{
                        over in
                        overRect = over
                    }
                VStack(alignment: .leading, spacing: 15.0) {
                    HStack(alignment: .top, spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 8.0) {
                            HStack(alignment: .top) {
                                Text("2,345")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 26))
                                Text("USD")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 12))
                            }
                            
                            Text("Total Premium")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 12))
                        }
                        ZStack() {
                            Rectangle()
                                .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.13))
                                .frame(width: 85, height: 75)
                            VStack(spacing: 6.0) {
                                Text("5")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 30))
                                Text("Active Cover")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 12))
                            }
                        }
                    }
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("Current Policy Balance")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 12))
                        HStack(alignment: .top){
                            Text("3.4330")
                                .foregroundColor(Color.white)
                                .font(.system(size: 38))
                            Text("USD")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 13))
                        }
                        .padding(.leading, 10.0)
                    }
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("SLC/USD")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 12))
                        HStack(alignment: .center, spacing: 25.0) {
                            HStack(alignment: .center, spacing: 2.0){
                                Text("2.7995")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 12))
                                    .padding(.leading)
                                Text(" USD")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 12))
                                Text("+ 12%")
                                    .foregroundColor(Color.green)
                                    .font(.system(size: 12))
                            }
                            ZStack() {
                                Capsule()
                                    .stroke(Color.green, lineWidth: 2)
                                    .frame(width: 35, height: 15)
                                Text("Buy")
                            }
                        }
                        
                    }
                }
            }
            //END
        }
}

struct RewardFirstComponent: View {
    @State private var overRect = false
        var body: some View {
            //RewardFirstComponent
            ZStack() {
                Rectangle()
                    .foregroundColor(Color(hue: 0.25, saturation: 0.997, brightness: 0.854))
                    .frame(width: 180, height: 85)
                    .onHover{
                        over in
                        overRect = over
                    }
                VStack(alignment: .leading, spacing: 5.0) {
                    HStack(alignment: .top, spacing: 50.0) {
                        Text("REWARDS")
                            .font(.system(size: 13))
                            .foregroundColor(Color(hue: 0.234, saturation: 0.913, brightness: 0.446))
                            .padding(.top, 5.0)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(Color(hue: 0.234, saturation: 0.913, brightness: 0.446))
                                .frame(width: 40, height: 40)
                                .cornerRadius(4)
                            //TODO IMAGE
                            Image("bitcoin")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                    }
                    
                    HStack(alignment: .bottom, spacing: 20.0) {
                        Text("Claim")
                            .font(.system(size: 15))
                            .foregroundColor(Color.black)
                        Text("0.221746")
                            .font(.system(size: 23))
                            .foregroundColor(Color.black)
                    }
                }
            }
            //END
        }
}

struct RewardSecondComponent: View {
    @State private var overRect = false
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                .frame(width: 180, height: 150)
                .onHover{
                    over in
                    overRect = over
                }
            VStack(alignment: .center, spacing: 8.0) {
                VStack(alignment: .trailing, spacing: 5.0) {
                    HStack() {
                        Text("+16%")
                            .font(.system(size: 14))
                        //TODO CHart
                        Image("graph4")
                            .resizable()
                            .frame(width: 30, height: 15)
                    }
                    ZStack() {
                        Circle()
                            .stroke(Color.green, lineWidth: 3)
                            .frame(width: 80, height: 80)
                        Text("2")
                            .font(.system(size: 30))
                    }
                }
                
                HStack() {
                    Text("Score")
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                    //TODO
                    Image("info")
                        .resizable()
                        .frame(width: 13, height: 13)
                }
            }
        }
    }
}

struct GetInsuredComponent: View {
    @State private var overRect = false
    @State private var overRect1 = false
    @State private var overRect2 = false
    var body: some View {
        //GetInsuredComponent
        ZStack(alignment: .topLeading) {
            Rectangle()
                .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.114))
                .frame(width: 300, height: 250)
            VStack(alignment: .leading, spacing: 15.0) {
                HStack(alignment: .top, spacing: 15.0) {
                    ZStack() {
                        Rectangle()
                            .frame(width: 150, height: 85)
                            .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                            .onHover{
                                over in
                                overRect = over
                            }
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack(alignment: .center, spacing: 25.0){
                                Text("0")
                                    .font(.system(size: 30))
                                ZStack() {
                                    Capsule()
                                        .stroke(Color.gray, lineWidth: 2)
                                        .frame(width: 80, height: 15)
                                    Text("View Claims")
                                }
                                .padding(.bottom, -15.0)
                                
                            }
                            Text("Active Claims")
                                .foregroundColor(Color.gray)
                        }
                    }
                    ZStack() {
                        Rectangle()
                            .frame(width: 135, height: 85)
                            .foregroundColor(overRect1 ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                            .onHover{
                                over in
                                overRect1 = over
                            }
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack(alignment: .top) {
                                Text("0,000")
                                    .font(.system(size: 30))
                                Text(" USD")
                                    .foregroundColor(Color.gray)
                                    .font(.system(size: 12))
                            }
                            Text("Total Claimed")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                ZStack() {
                    Rectangle()
                        .frame(width: 300, height: 150)
                        .foregroundColor(overRect2 ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                        .onHover{
                            over in
                            overRect2 = over
                        }
                    HStack(alignment: .top, spacing: 50.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            VStack(alignment: .leading, spacing: 5.0) {
                                HStack(alignment: .top) {
                                    Text("2,345")
                                        .font(.system(size: 32))
                                    Text("USD")
                                        .foregroundColor(Color.gray)
                                        .font(.system(size: 12))
                                }
                                Text("Total Invested")
                                    .foregroundColor(Color.gray)
                            }
                            VStack(alignment: .leading, spacing: 5.0) {
                                HStack(alignment: .top) {
                                    Text("3.4330")
                                        .font(.system(size: 32))
                                    Text("USD")
                                        .foregroundColor(Color.gray)
                                        .font(.system(size: 12))
                                }
                                .padding(.leading, 10.0)
                                Text("Total Available")
                                    .foregroundColor(Color.gray)
                            }
                        }
                        VStack(alignment: .trailing, spacing: 20.0) {
                            ZStack() {
                                Rectangle()
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.073, brightness: 0.15))
                                VStack(alignment: .leading, spacing: 10.0) {
                                    Text("81%")
                                        .font(.system(size: 26))
                                    HStack() {
                                        Text("APR")
                                            .font(.system(size: 16))
                                            .foregroundColor(Color.gray)
                                        //TODO
                                        Image("info")
                                            .resizable()
                                            .frame(width: 14, height: 14)
                                    }
                                }
                            }
                            ZStack() {
                                Capsule()
                                    .stroke(Color.green, lineWidth: 2)
                                    .frame(width: 50, height: 20)
                                Text("Invest")
                            }
                        }
                    }
                }
            }
        }
        //END
    }
}

struct marketViewComponent: View {
    @State private var overRect = false
        var body: some View {
            ZStack() {
                Rectangle()
                    .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                    .ignoresSafeArea()
                    .frame(width: 220, height: 250)
                    .onHover{
                        over in
                        overRect = over
                    }
                VStack(alignment: .leading, spacing: 15.0) {
                    HStack(alignment: .center, spacing: 25.0) {
                        Text("Markets")
                            .foregroundColor(Color.white)
                            .font(.system(size: 16))
                        
                        HStack() {
                            Text("USD")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 12))
                            Text("EUR")
                                .foregroundColor(Color.white)
                                .font(.system(size: 12))
                            Text("BTC")
                                .foregroundColor(Color.gray)
                                .font(.system(size: 12))
                        }
                    }
                    .padding(.bottom, 15.0)
                    HStack(spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 5.0) {
                            HStack() {
                                Text("ETH/EUR")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.gray)
                                Text("-1.14%")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.gray)
                            }
                            HStack() {
                                Text("1,087.91")
                                    .font(.system(size: 13))
                                Text("EUR")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                            }
                        }
                        //Image
                        Image("graph1")
                            .resizable()
                            .frame(width: 70, height: 30)
                    }
                    HStack(spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 5.0) {
                            HStack() {
                                Text("SLC/EUR")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.gray)
                                Text("-0.48%")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.gray)
                            }
                            HStack() {
                                Text("197.48")
                                    .font(.system(size: 13))
                                Text("EUR")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                            }
                        }
                        //Image
                        Image("graph2")
                            .resizable()
                            .frame(width: 70, height: 30)
                    }
                    HStack(spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 5.0) {
                            HStack() {
                                Text("BTC/EUR")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.gray)
                                Text("1.75%")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color.gray)
                            }
                            HStack() {
                                Text("11,435.18")
                                    .font(.system(size: 13))
                                Text("EUR")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.gray)
                            }
                        }
                        //Image
                        Image("graph3")
                            .resizable()
                            .frame(width: 70, height: 30)
                    }
                }
                .padding(20.0)
                
            }
    }
}
