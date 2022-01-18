//
//  MainView.swift
//  Task2
//
//  Created by Doston Rustamov on 19/01/22.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var menuItemsVM = CompaniesViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(menuItemsVM.menu) { item in
                        CustomNevLink(destination: CompaniesView(), label: {
                            MenuItemView(menuItem: item)})
                        
                        Divider()
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .toolbar {
                    HStack(alignment: .center){
                        Text("Оплата")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.trailing, 95)
                        Image(systemName: "magnifyingglass")
                    }
                }
                
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
