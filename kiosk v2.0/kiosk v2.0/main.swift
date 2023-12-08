//
//  main.swift
//  kiosk v2.0
//
//  Created by t2023-m0023 on 2023/12/07.
//

//파일 따로 생성해서 연결해도 됨
//상속 없이 클래스로 만들어보기


import Foundation

//메뉴 데이터모델 struct
struct MenuModel {
    let menuNum: Int
    let menuCategory: MainMenuCategory
    let menuDescription: String
}

//메인메뉴 카테고리 enum
enum MainMenuCategory {
    case burgers, FrozenCustard, Drinks, Beer, 종료 //소문자, 영어로
}

//클래스
class MenuManager {
  
    //메인메뉴 변수
    var menuBurger = MenuModel(menuNum: 1, menuCategory: .burgers, menuDescription: "앵거스 비프 통살을 다져만든 버거")
    var menuFrozenCustard = MenuModel(menuNum: 2, menuCategory: .FrozenCustard, menuDescription: "매장에서 신선하게 만드는 아이스크림")
    var menuDrink = MenuModel(menuNum: 3, menuCategory: .Drinks, menuDescription: "매장에서 직접 만드는 음료")
    var menuBeer = MenuModel(menuNum: 4, menuCategory: .Beer, menuDescription: "뉴욕 브루클린 브루어리에서 양조한 맥주")
    var menuExit = MenuModel(menuNum: 5, menuCategory: .종료, menuDescription: "프로그램 종료")
    
    
//메인메뉴 보여주는 펑션, for loop
    func menuDisplay() {
        for menuNum in 1...5 {
            switch menuNum {
            case 1:
                print("\(menuBurger.menuNum). \(menuBurger.menuCategory) |  \(menuBurger.menuDescription)")
            case 2:
                print("\(menuFrozenCustard.menuNum). \(menuFrozenCustard.menuCategory) | \(menuFrozenCustard.menuDescription)")
            case 3:
                print("\(menuDrink.menuNum). \(menuDrink.menuCategory) | \(menuDrink.menuDescription)" )
            case 4:
                print("\(menuBeer.menuNum). \(menuBeer.menuCategory) | \(menuBeer.menuDescription)")
            case 5:
                print("\(menuExit.menuNum). \(menuExit.menuCategory) | \(menuExit.menuDescription)")
            default:
                return print("test")
            }
        }
    }
}


//메뉴매니저 인스턴스 생성
let manager = MenuManager()

//메인메뉴 보여주기
//print(manager.printMenu())
print("아래 메뉴판을 보시고 메뉴를 골라 입력해주세요. \n [ SHAKESHACK MENU ]")
manager.menuDisplay()


//사용자에게 메뉴 번호 입력 받기
while true {
    let input = Int(readLine()!)
    switch input {
    case 1:
        //print("test num 1")// 여기서 submenu로 이동하기
        print("[ Burgers MENU ]")
        burgerManager.menuDisplay()//버거메뉴로 이동하는게 아니라 그냥 출력만 되버림..
    case 2:
        print("test num 2")
    case 3:
        print("test num 3")
    case 4:
        print("test num 4")
    case 5:
        print("프로그램을 종료합니다.")
        exit(0)
    default:
        print("잘못된 입력입니다.")
        exit(0)
    }
}



//입력 받은 번호로 submenu로 이동하기 e.g. 1번을 입력하면 Burgers 메뉴 출력


//submenu 출력하기 e.g. Burgers 메뉴 출력


//----------------v2.1----------------
//  Created by t2023-m0023 on 2023/12/08.
//

import Foundation

//메뉴 데이터모델 struct
struct MenuModel {
    let menuNum: Int
    let menuCategory: MainMenuCategory
    let menuDescription: String
}

//메인메뉴 카테고리 enum
enum MainMenuCategory {
    case burgers, frozenCustard, drinks, beer, exit
    
    var category: String {
        switch self {
        case .burgers:
            return "Burgers"
        case .frozenCustard:
            return "Frozen Custard"
        case .drinks:
            return "Drinks"
        case .beer:
            return "Beer"
        case .exit:
            return "종료"
        default:
            return "default"
        }
    }
}

//클래스
class MenuManager {
    var menuBuger = MenuModel(menuNum: 1, menuCategory: .burgers, menuDescription: "앵거스 비프 통살을 다져만든 버거")
    var menuCustard = MenuModel(menuNum: 2, menuCategory: .frozenCustard, menuDescription: "매장에서 신선하게 만드는 아이스크림")
    var menuDrinks = MenuModel(menuNum: 3, menuCategory: .drinks, menuDescription: "매장에서 직접 만드는 음료")
    var menuBeer = MenuModel(menuNum: 4, menuCategory: .beer, menuDescription: "뉴욕 브루클린 브루어리에서 양조한 맥주")
    var menuExit = MenuModel(menuNum: 5, menuCategory: .exit, menuDescription: "프로그램 종료")
    
}

let manager = MenuManager()

