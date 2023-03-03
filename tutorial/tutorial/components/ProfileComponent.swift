//
//  ProfileComponent.swift
//  tutorial
//
//  Created by Rome on 3/2/23.
//

import SwiftUI

struct StepbyStepButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color(hue: 0.234, saturation: 0.917, brightness: 0.822) : Color(hue: 0.234, saturation: 1.0, brightness: 1.0))
            .background(configuration.isPressed ? Color(hue: 0.234, saturation: 1.0, brightness: 1.0) : Color(hue: 0.234, saturation: 0.917, brightness: 0.822))
            .cornerRadius(5)
    }
}
//
//struct FirstProfileLeftComponent: View {
//    var body: some View {
//            VStack(alignment: .leading, spacing: 20.0) {
//                Text("Submit KYC")
//                    .font(.system(size: 16))
//                    .foregroundColor(Color.gray)
//                VStack(alignment: .leading, spacing: 20.0) {
//                    HStack(alignment: .top, spacing: 75.0) {
//                        VStack(alignment: .leading, spacing: 10.0) {
//                            Text("Personal Details")
//                                .font(.system(size: 16))
//                            Text("Your personal information is never shared \nwith other users.")
//                                .font(.system(size: 13))
//                                .foregroundColor(Color.gray)
//                        }
//                        VStack(alignment: .leading, spacing: 10.0)  {
//                            HStack(alignment: .top, spacing: 20.0) {
//                                VStack(alignment: .leading, spacing: 5.0) {
//                                    Text("First Name")
//                                    //TextField
//                                }
//                                VStack(alignment: .leading, spacing: 5.0) {
//                                    Text("Last Name")
//                                    //TextField
//                                }
//                            }
//                            VStack(alignment: .leading, spacing: 5.0) {
//                                Text("Date of Birth")
//                                HStack(alignment: .top, spacing: 20.0) {
//                                    //TextField
//                                    //TextField
//                                    //TextField
//                                }
//                            }
//                            VStack(alignment: .leading, spacing: 5.0) {
//                                Text("Email")
//                                //TextField
//                            }
//
//                            VStack(alignment: .leading, spacing: 5.0) {
//                                Text("Phone")
//                                HStack(alignment: .top, spacing: 20.0) {
//                                    //TextField
//                                    //TextField
//                                }
//                            }
//                            VStack(alignment: .leading, spacing: 5.0) {
//                                Text("OTP Code")
//                                //TextField
//                            }
//                        }
//                    }
//                    //linear
//                    Rectangle()
//                        .frame(width: 650, height: 1)
//                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
//
//                    HStack(alignment: .top, spacing: 75.0) {
//                        VStack(alignment: .leading, spacing: 10.0) {
//                            Text("Address Details")
//                                .font(.system(size: 16))
//                            Text("Your personal information is never shared \nwith other users.")
//                                .font(.system(size: 13))
//                                .foregroundColor(Color.gray)
//                        }
//                        VStack(alignment: .leading, spacing: 10.0)  {
//                            VStack(alignment: .leading, spacing: 5.0) {
//                                Text("State/Province")
//                                //TextField
//                            }
//                            HStack(alignment: .top, spacing: 20.0) {
//                                VStack(alignment: .leading, spacing: 5.0) {
//                                    Text("Address Line 1")
//                                    //TextField
//                                }
//                                VStack(alignment: .leading, spacing: 5.0) {
//                                    Text("Address Line 2")
//                                    //TextField
//                                }
//                            }
//                            HStack(alignment: .top, spacing: 20.0) {
//                                VStack(alignment: .leading, spacing: 5.0) {
//                                    Text("City")
//                                    //TextField
//                                }
//                                VStack(alignment: .leading, spacing: 5.0) {
//                                    Text("Post Code")
//                                    //TextField
//                                }
//                            }
//                        }
//                    }
//                    //linear
//                    Rectangle()
//                        .frame(width: 650, height: 1)
//                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
//                    HStack(alignment: .top, spacing: 320.0) {
//                        VStack(alignment: .leading, spacing: 10.0) {
//
//                        }
//                        VStack(alignment: .trailing) {
//                            Button(action: {}) {
//                                Text("Next Step")
//                                    .font(.system(size: 13))
//                                    .foregroundColor(Color.black)
//                                    .frame(width: 130, height: 35)
//                            }
//                            .buttonStyle(StepbyStepButtonStyle())
//                        }
//                        .padding(.leading, 190.0)
//                    }
//                }
//            }
//    }
//}
//
struct FirstProfileRightComponent: View {
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
                        Text("Step 1 of 2".uppercased())
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



struct TestProfileFirstComponent: View {
    @Binding var setNextPage: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Submit KYC")
                .foregroundColor(Color.gray)
                .font(.system(size: 16))
            VStack(alignment: .leading, spacing: 20.0) {
                HStack(alignment: .top, spacing: 0.0) {
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("Personal Details")
                            .font(.system(size: 16))
                        Text("Your personal inforamtion is never shared\nwith other users.")
                            .font(.system(size: 13))
                            .foregroundColor(Color.gray)
                    }
                    VStack(alignment: .leading, spacing: 10.0)  {
                        HStack(alignment: .top, spacing: 20.0) {
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("First Name")
                                // Text Field
                            }
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("Last Name")
                                // Text Field
                            }
                        }
                        VStack(alignment: .leading, spacing: 5.0) {
                            Text("Date of Birth")
                            HStack(alignment: .top, spacing: 20.0) {
                                //TextField
                                //TextField
                                //TextField
                            }
                        }
                        VStack(alignment: .leading, spacing: 5.0) {
                            Text("Email")
                            //TextField
                        }
                        VStack(alignment: .leading, spacing: 5.0) {
                            Text("Phone")
                            HStack(alignment: .top, spacing: 20.0) {
                                //Text Field
                                //Text Field
                            }
                        }
                        VStack(alignment: .leading, spacing: 5.0) {
                            Text("OTP Code")
                            //Text Field
                        }
                    }
                    .padding(.leading, 100.0)
                }
                //linear
                Rectangle()
                    .frame(width: 620, height: 1)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
                HStack(alignment: .top, spacing: 0.0) {
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("Address Details")
                            .font(.system(size: 16))
                        Text("Your personal information is never shared\nwith other users.")
                            .font(.system(size: 13))
                            .foregroundColor(Color.gray)
                    }
                    VStack(alignment: .leading, spacing: 10.0) {
                        VStack(alignment: .leading, spacing: 5.0) {
                            Text("State/Province")
                            //TextField
                        }
                        HStack(alignment: .top, spacing: 20.0) {
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("Address Line 1")
                                //TextField
                            }
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("Address Line 2")
                                //TextField
                            }
                        }
                        HStack(alignment: .top, spacing: 20.0) {
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("City")
                                //TextField
                            }
                            VStack(alignment: .leading, spacing: 5.0) {
                                Text("Post Code")
                                //TextField
                            }
                        }
                    }
                    .padding(.leading, 100.0)
                }
                //linear
                Rectangle()
                    .frame(width: 620, height: 1)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.234))
                HStack(alignment: .top, spacing: 320.0) {
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                    }
                    VStack(alignment: .leading, spacing: 10.0) {
                        VStack(alignment: .trailing) {
                            Button(action: {
                                setNextPage = false
                            }) {
                                Text("Next Step")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.black)
                                    .frame(width: 120, height: 35)
                            }
                            .buttonStyle(StepbyStepButtonStyle())
                        }
                        .padding(.leading, 180.0)
                    }
                }
            }
        }
        .frame(width: 650.0)
    }
}
