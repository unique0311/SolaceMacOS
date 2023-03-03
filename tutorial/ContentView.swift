//
//  ContentView.swift
//  tutorial
//
//  Created by Rome on 2/22/23.
//

import SwiftUI


struct ContentView: View {
    @State var isHomeSelectedon: Bool = false
    @State var isInsuranceSelectedon: Bool = false
    @State var isBondSelectedon: Bool = false
    @State var isClaimSelectedon: Bool = false
    @State var isAssessmentSelectedon: Bool = false
    @State var isProfileSelectedon: Bool = false
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 0.0) {
            SidebarComponent(isHomeSelected: $isHomeSelectedon, isInsuranceSelected: $isInsuranceSelectedon, isBondSelected: $isBondSelectedon, isClaimSelected: $isClaimSelectedon, isAssessmentSelected: $isAssessmentSelectedon, isProfileSelected: $isProfileSelectedon)
            VStack(alignment: .leading, spacing: 0.0) {
                NavbarView()
//                WelcomeView()
                if isHomeSelectedon {
                    DashboardView()
                } else if isInsuranceSelectedon {
                    InsuranceView()
                } else if isBondSelectedon {
                    BondView()
                } else if isClaimSelectedon {
                    ClaimView()
                } else if isAssessmentSelectedon {
                    ToastView()
                } else if isProfileSelectedon {
                    WelcomeView()
                } else {
                    WelcomeView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

//struct Fruit: Identifiable {
//    let id = UUID().uuidString
//    let name: String
//}

//final class ViewModel: ObservableObject {
//    init(fruits: [Fruit] = ViewModel.defaultFruits) {
//        self.fruits = fruits
//        self.selectedId = fruits[1].id
//    }
//
//    @Published var fruits: [Fruit]
//    @Published var selectedId: String?
//    static let defaultFruits: [Fruit] = ["Apple", "Orange", "pear"].map({Fruit(name: $0)})
//}
//
//struct ContentView: View {
//    @StateObject var viewModel = ViewModel()
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(viewModel.fruits) {
//                    item in
//                    NavigationLink(item.name, tag: item.id, selection: $viewModel.selectedId) {
//                        Text(item.name)
//                            .navigationTitle(item.name)
//                    }
//                }
//            }
//            .listStyle(.sidebar)
//            .frame(width: 240)
//            Text("No selection")
//        }
//    }
//}
