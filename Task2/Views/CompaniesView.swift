//
//  ContentView.swift
//  Task2
//
//  Created by Doston Rustamov on 19/01/22.
//

import SwiftUI

struct CompaniesView: View {
    @StateObject var mobileVM = CompaniesViewModel()
    
    
    var body: some View {
        VStack {
            ForEach(mobileVM.companies, id: \.self) { company in
                CompanyRowView(company: company)
            }
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CompaniesView()
    }
}
