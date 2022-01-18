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
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(mobileVM.companies) { company in
                        CompanyRowView(company: company)
                    }
                    Spacer()
                }.toolbar {
                    HStack(alignment: .center){
                        Text("Мобильные операторы")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.trailing, 20)
                        Image(systemName: "magnifyingglass")
                    }
                }
                
            }
            .padding(.horizontal)
           
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CompaniesView()
    }
}
