//
//  main.swift
//  kiosk v3.0
//
//  Created by t2023-m0023 on 2023/12/08.
//

import Foundation

//클래스
class Menu {
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
    
    func displayMainMenu() {
        print("\(menuNum). \(menuCategory) | \(menuDisc)")
    }
    

}




//메인메뉴
let burgers = Menu(menuNum: 1, menuCategory: "Burgers", menuPrice: nil, menuDisc: "앵거스 비프 통살을 다져만든 버거")
let frozenCustard = Menu(menuNum: 2, menuCategory: "Frozen Custard", menuPrice: nil, menuDisc: "매장에서 신선하게 만드는 아이스크림")
let drinks = Menu(menuNum: 3, menuCategory: "Drinks", menuPrice: nil, menuDisc: "매장에서 직접 만드는 음료")
let beer = Menu(menuNum: 4, menuCategory: "Beer", menuPrice: nil, menuDisc: "뉴욕 브루클린 브루어리에서 양조한 맥주")
let exit = Menu(menuNum: 5, menuCategory: "종료", menuPrice: nil, menuDisc: "프로그램 종료")

//메인메뉴 출력
print("아래 메뉴판을 보시고 메뉴를 골라 입력해주세요. \n [ SHAKESHACK MENU ]")
burgers.displayMainMenu()
frozenCustard.displayMainMenu()
drinks.displayMainMenu()
beer.displayMainMenu()
exit.displayMainMenu()




//버거메뉴
let shackBurger = BurgerMenu(menuNum: 1, menuCategory: "ShackBurger", menuPrice: 6.9, menuDisc: "토마토, 양상추, 쉑소스가 토핑된 치즈버거")
let smokeShack = BurgerMenu(menuNum: 2, menuCategory: "SmokeShack", menuPrice: 8.9, menuDisc: "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
let shroomBurger = BurgerMenu(menuNum: 3, menuCategory: "Shroom Burger", menuPrice: 9.4, menuDisc: "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
let cheeseBurger = BurgerMenu(menuNum: 4, menuCategory: "Cheeseburger", menuPrice: 6.9, menuDisc: "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
let hamburger = BurgerMenu(menuNum: 5, menuCategory: "Hamburger", menuPrice: 5.4, menuDisc: "비프패티를 기반으로 야채가 들어간 기본버거")



//버거메뉴 출력
shackBurger.displaySubMenu()
smokeShack.displaySubMenu()
shroomBurger.displaySubMenu()
cheeseBurger.displaySubMenu()
hamburger.displaySubMenu()
