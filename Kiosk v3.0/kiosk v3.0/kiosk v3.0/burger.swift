//
//  burger.swift
//  kiosk v3.0
//
//  Created by t2023-m0023 on 2023/12/08.
//

import Foundation

class BurgerMenu {
    let menuNum: Int
    let menuCategory: String
    let menuPrice: Double?
    let menuDisc: String
    
    init(menuNum: Int, menuCategory: String, menuPrice: Double?, menuDisc: String) {
        self.menuNum = menuNum
        self.menuCategory = menuCategory
        self.menuPrice = menuPrice
        self.menuDisc = menuDisc
    }
    
    func displaySubMenu() {
        print("\(menuNum). \(menuCategory) | W \(menuPrice!) | \(menuDisc)")
    }
}

//let shackBurger = BurgerMenu(menuNum: 1, menuCategory: "ShackBurger", menuPrice: 6.9, menuDisc: "토마토, 양상추, 쉑소스가 토핑된 치즈버거")
