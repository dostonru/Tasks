//
//  MenuItemView.swift
//  Task2
//
//  Created by Doston Rustamov on 19/01/22.
//

import SwiftUI

struct MenuItemView: View {
    @State var menuItem: MenuItems
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: menuItem.icon)
                .padding(.trailing, 10)
            Text(menuItem.name)
                .padding(.horizontal)
        }
        .padding()
    }
}
