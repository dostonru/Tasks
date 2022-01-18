//
//  CustomNevLink.swift
//  Task2
//
//  Created by Doston Rustamov on 19/01/22.
//

import SwiftUI

struct CustomNevLink<Label:View,Destination:View>: View {
    
    let destination: Destination
    let label: Label
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label()
    }
    var body: some View {
        NavigationLink(
            destination: destination.navigationBarHidden(true),
            label: { label.foregroundColor(.black)
            }
        )
    }
}

