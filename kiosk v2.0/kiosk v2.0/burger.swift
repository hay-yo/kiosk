//
//  burger.swift
//  kiosk v2.0
//
//  Created by t2023-m0023 on 2023/12/07.
//

import Foundation

//버거 데이터 모델
struct BugerModel {
    let burgerNum: Int
    let burgerName: BugerCategory
    let burgerPrice: Float //->optional로 해보기? 밑에서 나중에 값넣기
    //프로토콜
    //맵
    let burgerDescription: String
}

//버거메뉴 카테고리
enum BugerCategory {
    case ShackBurger, SmokeShack, ShroomBurger, Cheeseburger, Hamburger, 뒤로가기
}

//버거클래스 subClass
class BurgerMenuManager: MenuManager {
 //멤버변수를 이용해보기
   
    //프로퍼티, 클래스, 상속
    //계산 프로퍼티
    
    var shackBurger = BugerModel(burgerNum: 1, burgerName: .ShackBurger, burgerPrice: 6.9, burgerDescription: "토마토, 양상추, 쉑소스가 토핑된 치즈버거")
    var smokeShack = BugerModel(burgerNum: 2, burgerName: .SmokeShack, burgerPrice: 8.9, burgerDescription: "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거")
    var shroomBurger = BugerModel(burgerNum: 3, burgerName: .ShroomBurger, burgerPrice: 9.4, burgerDescription: "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거")
    var cheeseBurger = BugerModel(burgerNum: 4, burgerName: .Cheeseburger, burgerPrice: 6.9, burgerDescription: "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거")
    var hamburger = BugerModel(burgerNum: 5, burgerName: .Hamburger, burgerPrice: 5.4, burgerDescription: "비프패티를 기반으로 야채가 들어간 기본버거")
    //var back = BugerModel(burgerNum: 5, burgerName: .뒤로가기, burgerPrice: nil, burgerDescription: "뒤로가기")
   
//오버라이드
    //func 이름은 동사형
    override func menuDisplay() {
        for burgerNum in 1...6 {
            switch burgerNum {
            case 1:
                print("\(shackBurger.burgerNum) \(shackBurger.burgerName) |W \(shackBurger.burgerPrice)| \(shackBurger.burgerDescription)")
            case 2:
                print("\(smokeShack.burgerNum) \(smokeShack.burgerName) |W \(smokeShack.burgerPrice)| \(smokeShack.burgerDescription)")
            case 3:
                print("\(shroomBurger.burgerNum) \(shroomBurger.burgerName) |W \(shroomBurger.burgerPrice)| \(shroomBurger.burgerDescription)")
            case 4:
                print("\(cheeseBurger.burgerNum) \(cheeseBurger.burgerName) |W \(cheeseBurger.burgerPrice)| \(cheeseBurger.burgerDescription)")
            case 5:
                print("\(hamburger.burgerNum) \(hamburger.burgerName) |W \(hamburger.burgerPrice)| \(hamburger.burgerDescription)")
            case 6:
                print("6. 뒤로가기   |   뒤로가기")
                //manager.menuDisplay()
                //이거 넣으니까 숫자입력하면 계속 메인메뉴만 나옴. ???
            default:
                print("잘못된 입력입니다.")
                exit(0)
            }
        
        }
    }
    
}


//버거메뉴매니저 인스턴스 생성
let burgerManager = BurgerMenuManager() //전역변수



