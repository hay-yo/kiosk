//  main.swift
//  Kiosk v1.0

import Foundation

// readLine() 함수를 이용하여 유저의 입력값 처리하기
// readLine() 함수에 대해 학습해보고 활용하기
//let input = readLine()

//   구현해야할 것 목록
//1. 메뉴를 보여주기 - print()로?
//2. 메뉴의 번호를 입력하면 해당 메뉴의 상세 메뉴판으로 진입 - if나 switch, guard를 이용하여 구현
//3. 만약 잘못된 번호 입력시 에러 메세지
//4. 프로그램 종료를 위한 번호 정의하기
//5. readline 함수로 값을 입력받기 -> 문제: int는 입력받을 수 없음 -> 해결: Int(readLine()!)! 로 강제 언래핑(이라고 하는데 일단 만들면서 적용해봐야할듯)


//클래스 만들기
class Menu {
    //변수 선언
    var menuNum: Int
    var menuName: String
    var menuDescription: String
    
    //이니셜라이저 만들기
    init(menuNum: Int, menuName: String, menuDescription: String) {
        self.menuName = menuName
        self.menuNum = menuNum
        self.menuDescription = menuDescription
    }
    //함수 만들기
    func printMenu() {
        print("\(menuNum). \(menuName)  | \(menuDescription)")
      
    }
}


//subclass 만들고 나서, override해서 0번 뒤로가기로 수정하기?
class Burgers: Menu {
    var burgerPrice: Double?
    
    func printBurgerMenu() {
        print("\(menuNum). \(menuName)  | w \(burgerPrice!) \(menuDescription)")
    }
}

//버거 서브메뉴 만들기 -> 잘 안되고 있다
let shackBurger = Burgers(menuNum: 1, menuName: "ShackBurger", menuDescription: "토마토, 양상추, 쉑소스가 토핑된 치즈버거")
shackBurger.burgerPrice = 6.9
print(shackBurger)


//object 생성
let burgers = Menu(menuNum: 1, menuName: "Burgers", menuDescription: "앵거스 비프 통살을 다져만든 버거")
let frozenCustard = Menu(menuNum: 2, menuName: "Frozen Custard", menuDescription: "매장에서 신선하게 만드는 아이스크림")
let drinks = Menu(menuNum: 3, menuName: "Drinks", menuDescription: "매장에서 직접 만드는 음료")
let beer = Menu(menuNum: 4, menuName: "Beer", menuDescription: "뉴욕 브루클린 브루어리에서 양조한 맥주")
let exit = Menu(menuNum: 0, menuName: "종료", menuDescription: "프로그램 종료")


//전체 메뉴판 보여주기
print("아래 메뉴판을 보시고 메뉴를 골라 입력해주세요. \n [ SHAKESHACK MENU ]")
burgers.printMenu()
frozenCustard.printMenu()
drinks.printMenu()
beer.printMenu()
exit.printMenu()

//번호 입력받아서 메뉴선택하기 -> 이것도 잘안되고 있다
let selectNum = Int(readLine()!)!

//burger

