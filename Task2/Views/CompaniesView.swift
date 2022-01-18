//
//  ContentView.swift
//  Task2
//
//  Created by Doston Rustamov on 19/01/22.
//

import SwiftUI

struct CompaniesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject var mobileVM = CompaniesViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(mobileVM.companies) { company in
                        CompanyRowView(company: company)
                            .padding(.vertical, 10)
                        Divider()
                    }
                    Spacer()
                }
                .offset(y: -30)
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(alignment: .center){
                        Image(systemName: "chevron.backward")
                            .padding()
                            .onTapGesture {
                                presentationMode.wrappedValue.dismiss()
                            }
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
