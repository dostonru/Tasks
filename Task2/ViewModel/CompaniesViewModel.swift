//
//  CompaniesViewModel.swift
//  Task2
//
//  Created by Doston Rustamov on 19/01/22.
//

import Foundation

class CompaniesViewModel: ObservableObject {
    
    // MARK: Models
    // 1. For menu with companies
    // 2. For main menu items
    @Published var companies: [CompaniesModel]
    @Published var menu: [MenuItems]
    
    init() {
        let list = [
            CompaniesModel(name: "Beeline",             imageName: "beeline",   cashback: 1),
            CompaniesModel(name: "UMS",                 imageName: "ums"),
            CompaniesModel(name: "Ucell",               imageName: "ucell"),
            CompaniesModel(name: "Uzmobile GSM",        imageName: "uzmobile",  cashback: 5),
            CompaniesModel(name: "Uzmobile CDMA",       imageName: "uzmobile"),
            CompaniesModel(name: "Beeline (Россия)",    imageName: "beeline",   cashback: 1),
            CompaniesModel(name: "Beeline (Казахстан)", imageName: "beeline",   cashback: 1),
            CompaniesModel(name: "Beeline (Кыргызстан)",imageName: "beeline",   cashback: 1),
        ]
        let menuItems = [
            MenuItems(name: "Мобильные операторы",        icon: "iphone.homebutton"),
            MenuItems(name: "Интернет провайдеры",        icon: "wifi"),
            MenuItems(name: "Телефония",                  icon: "phone"),
            MenuItems(name: "Гос. и Коммунальные услуги", icon: "bag"),
            MenuItems(name: "Служба такси",               icon: "car"),
            MenuItems(name: "Онлайн сервисы",             icon: "shippingbox"),
            MenuItems(name: "Обучение",                   icon: "graduationcap"),
            MenuItems(name: "Благотворительность",        icon: "globe.asia.australia"),
            MenuItems(name: "Покупки",                    icon: "cart"),
            MenuItems(name: "Объявление и реклама",       icon: "banknote"),
            MenuItems(name: "Рестораны и кафе",           icon: "loupe"),
            MenuItems(name: "Хостинг провайдеры",         icon: "server.rack"),
            MenuItems(name: "Медицина",                   icon: "cross.case"),
            MenuItems(name: "Авиабилеты",                 icon: "airplane"),
            MenuItems(name: "Электронные кошельки",       icon: "creditcard"),
        ]
        
        self.companies = list
        self.menu = menuItems
    }
    
}
