//
//  ClaimComponent.swift
//  tutorial
//
//  Created by Rome on 2/28/23.
//

import SwiftUI
import AppKit

struct BackButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color(hue: 0.0, saturation: 0.009, brightness: 0.226) : Color.white)
            .background(configuration.isPressed ? Color.white : Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
//            .cornerRadius(6.0)
//            .padding()
    }
}

struct ViewButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(configuration.isPressed ? Color(hue: 0.238, saturation: 0.889, brightness: 0.99) : Color(hue: 0.238, saturation: 0.837, brightness: 0.738))
            .cornerRadius(3.0)
            .frame(width: 100, height: 30)
//            .padding()
    }
}


struct NewClaimComponent: View {
    @State private var isOn = false
    @Binding var backButtonSelected: Bool
    @Binding var backViewSelected: Bool
    var body: some View {
            VStack(alignment: .leading, spacing: 20.0) {
                Button(action: {
                    backButtonSelected = true
                    if backButtonSelected {
                        backViewSelected = false
                    }
                }) {
                    Text("Button")
                        .font(.system(size: 14))
                        .frame(width: 80, height: 30)
                }
                .buttonStyle(BackButtonStyle())
                VStack(alignment: .leading, spacing: 20.0) {
                    HStack(alignment: .top, spacing: 75.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Incident Details")
                                .font(.system(size: 16))
                            Text("Your information is never to other users.")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                        }
                        VStack(alignment: .leading, spacing: 10.0)  {
                            VStack(alignment: .leading) {
                                HStack() {
                                    Text("Claim Type")
                                    Image(systemName: "info.circle.fill")
                                        .foregroundColor(Color.gray)
                                }
                                // Text Field
                            }
                            VStack(alignment: .leading) {
                                HStack() {
                                    Text("Event Type")
                                    Image(systemName: "info.circle.fill")
                                        .foregroundColor(Color.gray)
                                }
                                // Text Field
                            }
                            VStack(alignment: .leading) {
                                HStack() {
                                    Text("Event Date")
                                    Image(systemName: "info.circle.fill")
                                        .foregroundColor(Color.gray)
                                }
                                // Text Field
                                HStack() {
                                    //TextField
                                }
                            }
                            HStack(alignment: .top, spacing: 20.0) {
                                VStack(alignment: .leading) {
                                    HStack() {
                                        Text("Event Time")
                                        Image(systemName: "info.circle.fill")
                                            .foregroundColor(Color.gray)
                                    }
                                    // Text Field
                                }
                                VStack(alignment: .leading) {
                                    HStack() {
                                        Text("Time Zone")
                                        Image(systemName: "info.circle.fill")
                                            .foregroundColor(Color.gray)
                                    }
                                    // Text Field
                                }
                            }
                        }
                    }
                    //linear
                    Rectangle()
                        .frame(width: 650, height: 1)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
                    HStack(alignment: .top, spacing: 75.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack() {
                                Text("Incident Description")
                                    .font(.system(size: 16))
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(Color.gray)
                            }
                            Text("Your information is never to other users.")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                        }
                        //Text Field
                    }
                    //linear
                    Rectangle()
                        .frame(width: 650, height: 1)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
                    HStack(alignment: .top, spacing: 75.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack() {
                                Text("Incident Evidence")
                                    .font(.system(size: 16))
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(Color.gray)
                            }
                            Text("Drag and drop one or multiple files (Max\nsize: 1MB")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                        }
                        //Text Field
                        VStack(alignment: .leading, spacing: 15.0) {
                            ZStack() {
                                Rectangle()
                                    .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                    .foregroundColor(Color.gray)
                                    .cornerRadius(5)
                                    .frame(width: 335, height: 30)
                                HStack(alignment: .center, spacing: 10.0) {
                                    //
                                    Text("Upload")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.gray)
                                }
                            }
                            VStack(alignment: .leading, spacing: 10.0) {
                                HStack(alignment: .top, spacing: 30.0) {
                                    HStack(alignment: .center, spacing: 10.0) {
                                        //Image
                                        Text("img 001.png")
                                            .font(.system(size: 13))
                                    }
                                    HStack(alignment: .center, spacing: 10.0) {
                                        Text("Uploaded")
                                            .font(.system(size: 13))
                                            .foregroundColor(Color.green)
                                        //Image
                                    }
                                }
                                HStack(alignment: .top, spacing: 30.0) {
                                    HStack(alignment: .center, spacing: 10.0) {
                                        //Image
                                        Text("doc 002.pdf")
                                            .font(.system(size: 13))
                                    }
                                    HStack(alignment: .center, spacing: 10.0) {
                                        Text("Uploading")
                                            .font(.system(size: 13))
                                            .foregroundColor(Color.green)
                                        //Image
                                    }
                                }
                            }
                            ZStack() {
                                Rectangle()
                                    .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.234), lineWidth: 1)
                                    .foregroundColor(Color.gray)
                                    .frame(width: 335, height: 120)
                                VStack(alignment: .leading, spacing: 10.0) {
                                    HStack() {
                                        //
                                        Text("Document must be in good condition")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                    HStack() {
                                        //
                                        Text("The document must be valid for the period")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                    HStack() {
                                        //
                                        Text("The face must be clearly visible")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                    HStack() {
                                        //
                                        Text("Not has today's date")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                }
                                .padding(10)
                            }
                        }
                    }
                    //linear
                    Rectangle()
                        .frame(width: 650, height: 1)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
                    HStack(alignment: .top, spacing: 320.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            
                        }
                        VStack(alignment: .leading, spacing: 10.0) {
                            VStack(alignment: .leading) {
                                HStack(spacing: 1.0) {
                                    Toggle(isOn: $isOn) {
                                                Text("I accept Solace's")
                                            }
                                            .toggleStyle(.checkbox)
                                        
                                    Text("Terms of Use")
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 12))
                                        .underline()
                                }
                                Text("")
                            }
                            VStack(alignment: .trailing) {
                                Button(action: {}) {
                                    Text("Submit")
                                        .font(.system(size: 14))
                                        .frame(width: 100, height: 35)
                                }
                                .buttonStyle(BackButtonStyle())
                            }
                            .padding(.leading, 220.0)
                        }
                    }
                }
            }
    }
}

struct NewClaimRightComponent: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 30.0) {
            Text("How it works")
                .font(.system(size: 13))
                .foregroundColor(Color.purple)
            VStack(alignment: .leading, spacing: 15.0) {
                Text("Want to continue with Smartphone?")
                ZStack() {
                    Rectangle()
                        .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.234), lineWidth: 1)
//                        .foregroundColor(Color.gray)
                        .frame(width: 250, height: 220)
                    //QR Image
                    Image("qrcode")
                        .resizable()
                        .frame(width: 180, height: 180)
                }
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .frame(width: 250, height: 190)
                        .foregroundColor(Color(hue: 0.63, saturation: 0.053, brightness: 0.262))
                    VStack(alignment: .leading, spacing: 20.0) {
                        HStack(alignment: .center, spacing: 15.0) {
                            Text("Attachments")
                                .font(.system(size: 16))
                            //
                        }
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("Id_back.png")
                                }
                                //Image
                            }
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("Id_front.png")
                                }
                                //Image
                            }
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("Img 001.png")
                                }
                                //Image
                            }
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("doc 002.pdf")
                                }
                                //Image
                            }
                        }
                    }
                    .padding(20)
                }
                ZStack() {
                    Rectangle()
                        .frame(width: 250, height: 170)
                        .foregroundColor(Color(hue: 0.63, saturation: 0.053, brightness: 0.262))
                    
                    
                    VStack(alignment: .center, spacing: 15.0) {
                        VStack(alignment: .center, spacing: 1.0) {
                            Text("Your Claim is 50%")
                                .font(.system(size: 16))
                            Text("complete")
                                .font(.system(size: 16))
                        }
                        
                        //Image
                        Text("Progress")
                            .foregroundColor(Color.green)
                            .font(.system(size: 13))
                    }
                    .padding(25.0)
                }
            }
            
        }
        .padding(.trailing, 10.0)
        
    }
}
//
//struct TextFieldCustom: View{
//    @State var value = ""
//    var placeholder = "Select Client"
//    var dropDownList = ["PSO", "PFA", "AIR", "HOT"]
//    var body: some View {
//        Menu {
//            ForEach(dropDownList, id: \.self){ client in
//                Button(client) {
//                    self.value = client
//                }
//            }
//        } label: {
//            VStack(spacing: 5){
//                HStack{
//                    Text(value.isEmpty ? placeholder : value)
//                        .foregroundColor(value.isEmpty ? .gray : .black)
////                    Spacer()
////                    Image(systemName: "arrowtriangle.down.fill")
////                        .foregroundColor(Color.orange)
////                        .font(Font.system(size: 20, weight: .bold))
//                }
//
////                .padding(.horizontal)
////                Rectangle()
////                    .fill(Color.orange)
////                    .frame(width: 30, height: 2)
//            }.frame(width: 40, height: 10)
//        }.frame(width: 120, height: 40)
//            .foregroundColor(Color.white)
//
//    }
//}



struct ClaimDetailFirstComponent: View {
    @State private var overRect = false
    @State private var overRect1 = false
    @State private var overRect2 = false
    @State private var isOn = false
    var longText = "Distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrubution of letters, as opposed to using 'Content here, content here.', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover Many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (Ingected humour and the like). \n\nDistracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            VStack(alignment: .leading, spacing: 15.0) {
                Button(action: {}) {
                    Text("Button")
                        .font(.system(size: 14))
                        .frame(width: 80, height: 30)
                }
                .buttonStyle(BackButtonStyle())
                VStack(alignment: .leading, spacing: 10.0) {
                    Text("Incident Details")
                        .font(.system(size: 16))
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .frame(width: 650, height: 180)
                            .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                            .onHover{
                                over in
                                overRect = over
                            }
                        VStack(alignment: .leading, spacing: 5.0) {
                            HStack(alignment: .center, spacing: 1.0) {
                                //Image
                                Text("BY: 0x95e441...")
                                    .font(.system(size: 14))
                                HStack() {
                                    //Image
                                    Text("Created")
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 14))
                                }
                                Text("on April 23rd, 2022")
                                    .foregroundColor(Color.green)
                                    .font(.system(size: 14))
                            }
                            Text(longText)
                                .font(.system(size: 11))
                                .foregroundColor(Color.gray)
                        }
                        .padding(20)
                        .frame(width: 650, height: 180)
                    }
                }
                
                VStack(alignment: .leading, spacing: 15.0) {
                    HStack(alignment: .center, spacing: 2.0) {
                        Text("Investigation Report")
                            .font(.system(size: 16))
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .frame(width: 650, height: 130)
                            .foregroundColor(overRect1 ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                            .onHover{
                                over in
                                overRect1 = over
                            }
                        HStack(alignment: .top, spacing: 50.0) {
                            VStack(alignment: .leading, spacing: 20.0) {
                                Text("Asessor Report")
                                    .foregroundColor(Color.gray)
                                Text("File Hash")
                                    .foregroundColor(Color.gray)
                                HStack() {
                                    Text("Recommandation")
                                        .foregroundColor(Color.gray)
                                    Image(systemName: "info.circle.fill")
                                        .foregroundColor(Color.gray)
                                        
                                }
                            }
                            VStack(alignment: .leading, spacing: 20.0) {
                                HStack(alignment: .center, spacing: 10.0) {
                                    //
                                    Text("doc 001.pdf")
                                        .font(.system(size: 13))
                                    //
                                }
                                
                                Text("QmXvcdrqmchauToiSx6udW7NBLBaZj16nBkhMjVJEhWKtU")
                                
                                Text("Reject")
                                    .foregroundColor(Color.red)
                            }
                        }
                        .padding(20.0)
                        .frame(width: 650, height: 130)
                    }
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: 650, height: 180)
                            .foregroundColor(Color(hue: 0.618, saturation: 0.149, brightness: 0.142))
                        VStack() {
                            Text("Cast Your Vote")
                                .font(.system(size: 16))
                            HStack() {
                                
                            }
                            HStack() {
                                HStack(spacing: 1.0) {
                                    Toggle(isOn: $isOn) {
                                                Text("I accept Solace's")
                                            }
                                            .toggleStyle(.checkbox)
                                        
                                    Text("Terms of Use")
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 12))
                                        .underline()
                                }
                                Button(action: {}) {
                                    Text("Submit Vote")
                                        .font(.system(size: 14))
                                        .frame(width: 110, height: 30)
                                }
                                .buttonStyle(BackButtonStyle())
                            }
                        }
                    }
                }
            }
            ClaimDetailSecondComponent()
        }
    }
}

struct ClaimDetailSecondComponent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Votes (152)")
                .font(.system(size: 16))
            VStack(alignment: .leading, spacing: 10.0) {
                HStack(alignment: .center, spacing: 20.0) {
                    Text("address".uppercased())
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                    Text("vote".uppercased())
                        .font(.system(size: 14))
                        .foregroundColor(Color.gray)
                        .padding(.leading, 150.0)
                    HStack(alignment: .center, spacing: 1.0) {
                        Text("voting power".uppercased())
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray)
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 100.0)
                }
                .frame(width: 640, height: 30)
                ScrollView() {
                    VStack(alignment: .leading, spacing: 15.0) {
                        ClaimOwnVoteComponent()
                        ClaimOwnVoteComponent()
                        ClaimOwnVoteComponent()
                        ClaimOwnVoteComponent()
                        ClaimOwnVoteComponent()
                        ClaimOwnVoteComponent()
                        ClaimOwnVoteComponent()
                    }
                }
                .frame(height: 200)
            }
        }
    }
}

struct ClaimOwnVoteComponent: View {
    @State private var overRect = false
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(width: 640, height: 50)
                .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                .onHover{
                    over in
                    overRect = over
                }
            HStack(alignment: .center, spacing: 145.0) {
                HStack() {
                    //Image
                    Text("0x95932ae....ddd97322")
                }
                Text("Yes")
                Text("15,856.640")
            }
            .padding(.leading, 10.0)
            .padding(10)
        }
    }
}

struct ClaimDetailThirdComponent: View {
    @State private var overRect = false
    @State private var overRect1 = false
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text("")
                .padding(.bottom, 22.0)
            Text("Overview")
                .font(.system(size: 14))
                .foregroundColor(Color.gray)
            VStack() {
                ZStack() {
                    Rectangle()
                        .frame(width: 250, height: 270)
                        .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                        .onHover{
                            over in
                            overRect = over
                        }
                }
                .padding(.bottom, 10.0)
                ZStack() {
                    Rectangle()
                        .frame(width: 250, height: 310)
                        .foregroundColor(overRect1 ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                        .onHover{
                            over in
                            overRect1 = over
                        }
                }
            }
        }
        .padding(.trailing, 10.0)
    }
}

struct ClaimMainStructComponent: View {
    @Binding var isClaimSelected: Bool
    @Binding var isValidatorSelected: Bool
    @Binding var isAdjustorSelected: Bool
    @State var isClaimStyleSelected: Bool = false
        var body: some View {
            HStack(alignment: .center, spacing: 100.0) {
                HStack(alignment: .center, spacing: 20.0) {
                    Button(action: {
                        isClaimSelected = true
                        if isClaimSelected == true {
                            isValidatorSelected = false
                            isAdjustorSelected = false
                        }
                        }) {
                            Text("Claims")
                                .font(.system(size: 14))
                    }
                        .buttonStyle(StructComponentSelectedStyle(flag: $isClaimSelected))
                    
                    Button(action: {
                        isValidatorSelected = true
                        if isValidatorSelected == true {
                            isClaimSelected = false
                            isAdjustorSelected = false
                        }
                        }) {
                            Text("Validator")
                                .font(.system(size: 14))
                    }
                        .buttonStyle(StructComponentSelectedStyle(flag: $isValidatorSelected))
                    
                    Button(action: {
                        isAdjustorSelected = true
                        if isAdjustorSelected == true {
                            isClaimSelected = false
                            isValidatorSelected = false
                        }
                        }) {
                            Text("Adjustor")
                                .font(.system(size: 14))
                    }
                        .buttonStyle(StructComponentSelectedStyle(flag: $isAdjustorSelected))
                }
                HStack(alignment: .center, spacing: 20.0) {
                    Text("ALL")
                        .font(.system(size: 13))
                        .foregroundColor(Color.white)
                    Text("voted".uppercased())
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                    Text("active".uppercased())
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                    Text("closed".uppercased())
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                    Text("recent".uppercased())
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                    
                }
                .padding(.leading, 170.0)
            }
            .padding(.bottom, 10.0)
            //END
        }
}


struct ClaimsChartStructComponent: View {
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

struct ClaimChartSelectedComponent: View {
    @State private var overRect = false
    @Binding var viewSelected: Bool
    @Binding var viewBackButtonSelected: Bool
        var body: some View {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 945, height: 70)
                    .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                    .onHover{
                        over in
                        overRect = over
                    }
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
                    Button(action: {
                        viewSelected = false
                        if viewSelected {
                            viewBackButtonSelected = true
                        }
                            
                    }) {
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
                        .frame(width: 100, height: 30)
                        .padding(.leading, 10.0)
                    }
                    .buttonStyle(ViewButtonStyle())
                    
                }
                .padding(.leading, 20.0)
            }
            .padding(.trailing, 5.0)
        }
}


struct ValidatorChartStructComponent: View {
        var body: some View {
            //Claim Chart
            VStack() {
                HStack() {
                    HStack() {
                        Text("Name".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 50.0)
                    HStack() {
                        Text("Chain".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 100.0)
                    HStack() {
                        Text("apr".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 40.0)
                    HStack() {
                        Text("release date".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 40.0)
                    HStack() {
                        Text("capital".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 40.0)
                    HStack() {
                        Text("action".uppercased())
                            .foregroundColor(Color.gray)
                            .font(.system(size: 14))
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(Color.gray)
                    }
                    .padding(.leading, 100.0)
                }
            }
        }
}

struct ValidatorChartSelectedComponent: View {
    @State private var overRect = false
//    @Binding var validatorViewSelected: Bool
        var body: some View {
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 945, height: 70)
                    .foregroundColor(overRect ? Color(hue: 0.618, saturation: 0.149, brightness: 0.142): Color(hue: 0.0, saturation: 0.009, brightness: 0.226))
                    .onHover{
                        over in
                        overRect = over
                    }
                HStack(alignment: .center, spacing: 20.0) {
//                    Rectangle()
//                        .frame(width:3, height: 20)
                    Image("three")
                        .resizable()
                        .frame(width: 7, height: 20)
                    Text("SLC Pool")
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
                    .padding(.leading, 10)
                    .padding(.trailing, 30.0)
                    
                    Image("car")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                    Text("10%")
                        .font(.system(size: 14))
                        .padding(.leading, 65.0)
                    HStack(alignment: .center) {
                        Text("2022/06/01")
                            .font(.system(size: 14))
                            .bold()
                        Text("10:26:20")
                            .font(.system(size: 14))
                    }
                    .padding(.leading, 55.0)
                    HStack() {
                        Text("9.4000")
                            .font(.system(size: 18))
                            .bold()
                        Text("SLC")
                            .font(.system(size: 18))
                    }
                    .padding(.leading, 10.0)
                    Button(action: {
//                        validatorViewSelected = false
                    }) {
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
                        .frame(width: 100, height: 30)
                        .padding(.leading, 10.0)
                    }
                    .buttonStyle(ViewButtonStyle())
                    .padding(.leading, 50.0)
                }
                .padding(.leading, 20.0)
            }
            .padding(.trailing, 5.0)
        }
}


struct ClaimAdjustorComponent: View {
    @State private var isOn = false
    var body: some View {
            VStack(alignment: .leading, spacing: 20.0) {
                VStack(alignment: .leading, spacing: 20.0) {
                    HStack(alignment: .top, spacing: 75.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            Text("Professional Details")
                                .font(.system(size: 16))
                            Text("Your professional information is never to \nothe users")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                        }
                        VStack(alignment: .leading, spacing: 10.0)  {
                            VStack(alignment: .leading) {
                                HStack() {
                                    Text("Work Area")
                                    Image(systemName: "info.circle.fill")
                                        .foregroundColor(Color.gray)
                                }
                                // Text Field
                            }
                            VStack(alignment: .leading) {
                                HStack() {
                                    Text("Work Field")
                                    Image(systemName: "info.circle.fill")
                                        .foregroundColor(Color.gray)
                                }
                                // Text Field
                            }
                        }
                    }
                    //linear
                    Rectangle()
                        .frame(width: 650, height: 1)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
                    HStack(alignment: .top, spacing: 75.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack() {
                                Text("Professional Certification")
                                    .font(.system(size: 16))
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(Color.gray)
                            }
                            Text("Drag and drop one or multiple files (Max\nsize: 1MB)")
                                .font(.system(size: 13))
                                .foregroundColor(Color.gray)
                        }
                        //Text Field
                        VStack(alignment: .leading, spacing: 15.0) {
                            ZStack() {
                                Rectangle()
                                    .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                                    .foregroundColor(Color.gray)
                                    .cornerRadius(5)
                                    .frame(width: 335, height: 30)
                                HStack(alignment: .center, spacing: 10.0) {
                                    //
                                    Text("Upload")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.gray)
                                }
                            }
                            VStack(alignment: .leading, spacing: 10.0) {
                                HStack(alignment: .top, spacing: 30.0) {
                                    HStack(alignment: .center, spacing: 10.0) {
                                        //Image
                                        Text("img 001.png")
                                            .font(.system(size: 13))
                                    }
                                    HStack(alignment: .center, spacing: 10.0) {
                                        Text("Uploaded")
                                            .font(.system(size: 13))
                                            .foregroundColor(Color.green)
                                        //Image
                                    }
                                }
                                HStack(alignment: .top, spacing: 30.0) {
                                    HStack(alignment: .center, spacing: 10.0) {
                                        //Image
                                        Text("doc 002.pdf")
                                            .font(.system(size: 13))
                                    }
                                    HStack(alignment: .center, spacing: 10.0) {
                                        Text("Uploading")
                                            .font(.system(size: 13))
                                            .foregroundColor(Color.green)
                                        //Image
                                    }
                                }
                            }
                            ZStack() {
                                Rectangle()
                                    .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.234), lineWidth: 1)
                                    .foregroundColor(Color.gray)
                                    .frame(width: 335, height: 120)
                                VStack(alignment: .leading, spacing: 10.0) {
                                    HStack() {
                                        //
                                        Text("Document must be in good condition")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                    HStack() {
                                        //
                                        Text("The document must be valid for the period")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                    HStack() {
                                        //
                                        Text("The face must be clearly visible")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                    HStack() {
                                        //
                                        Text("Not has today's date")
                                            .foregroundColor(Color.gray)
                                            .font(.system(size: 13))
                                    }
                                }
                                .padding(10)
                            }
                        }
                    }
                    //linear
                    Rectangle()
                        .frame(width: 650, height: 1)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
                    HStack(alignment: .top, spacing: 320.0) {
                        VStack(alignment: .leading, spacing: 10.0) {
                            
                        }
                        VStack(alignment: .leading, spacing: 10.0) {
                            VStack(alignment: .leading) {
                                HStack(spacing: 1.0) {
                                    Toggle(isOn: $isOn) {
                                                Text("I accept Solace's")
                                            }
                                            .toggleStyle(.checkbox)
                                        
                                    Text("Terms of Use")
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 12))
                                        .underline()
                                }
                                Text("")
                            }
                            VStack(alignment: .trailing) {
                                Button(action: {}) {
                                    Text("Submit")
                                        .font(.system(size: 14))
                                        .frame(width: 100, height: 35)
                                }
                                .buttonStyle(BackButtonStyle())
                            }
                            .padding(.leading, 220.0)
                        }
                    }
                }
            }
    }
}

struct ClaimAdjustorRightComponent: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 30.0) {
            VStack(alignment: .leading, spacing: 15.0) {
                Text("Want to continue with Smartphone?")
                ZStack() {
                    Rectangle()
                        .stroke(Color(hue: 1.0, saturation: 0.0, brightness: 0.234), lineWidth: 1)
//                        .foregroundColor(Color.gray)
                        .frame(width: 250, height: 220)
                    //QR Image
                    Image("qrcode")
                        .resizable()
                        .frame(width: 180, height: 180)
                }
                ZStack(alignment: .topLeading) {
                    Rectangle()
                        .frame(width: 250, height: 190)
                        .foregroundColor(Color(hue: 0.63, saturation: 0.053, brightness: 0.262))
                    VStack(alignment: .leading, spacing: 20.0) {
                        HStack(alignment: .center, spacing: 15.0) {
                            Text("Attachments")
                                .font(.system(size: 16))
                            //
                        }
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("Id_back.png")
                                }
                                //Image
                            }
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("Id_front.png")
                                }
                                //Image
                            }
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("Img 001.png")
                                }
                                //Image
                            }
                            HStack() {
                                HStack() {
                                    //Image
                                    Text("doc 002.pdf")
                                }
                                //Image
                            }
                        }
                    }
                    .padding(20)
                }
            }
        }
        .padding(.trailing, 10.0)
    }
}
