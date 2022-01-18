//
//  CompaniesViewModel.swift
//  Task2
//
//  Created by Doston Rustamov on 19/01/22.
//

import Foundation

class CompaniesViewModel: ObservableObject {
    @Published var companies: [CompaniesModel]
    
    init() {
        let list = [
            CompaniesModel(name: "Beeline", imageName: "beeline", cashback: 1),
            CompaniesModel(name: "UMS", imageName: "ums"),
            CompaniesModel(name: "Ucell", imageName: "ucell"),
            CompaniesModel(name: "Uzmobile GSM", imageName: "uzmobile", cashback: 5),
            CompaniesModel(name: "Uzmobile CDMA", imageName: "uzmobile"),
            CompaniesModel(name: "Beeline (Россия)", imageName: "beeline", cashback: 1),
            CompaniesModel(name: "Beeline (Казахстан)", imageName: "beeline", cashback: 1),
            CompaniesModel(name: "Beeline (Кыргызстан)", imageName: "beeline", cashback: 1),
        ]
        self.companies = list
    }
    
}
