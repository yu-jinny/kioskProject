//
//  class.swift
//  kioskProject
//
//  Created by t2023-m0028 on 12/7/23.
//

import Foundation

class menuItem {
    var item: String
    var info: String

    init(item: String, info: String) {
        self.item = item
        self.info = info
    }

    func display() {
        print("\(item)\(info)")
    }
}

// 메인메뉴 클래스 - 부모 클래스

class foodItem: menuItem {
    var price: Double

    init(item: String, info: String, price: Double) {
        self.price = price
        super.init(item: item, info: info)
    }

    override func display() {
        print("\(item) - \(price)원 \(info)")
    }
}
// 버거메뉴 클래스 - 자식 클래스

let mainMenu: [menuItem] = [
    menuItem(item: "1. Burgers         ", info: "| 앵거스 비프 통살을 다져만든 버거"),
    menuItem(item: "2. Ice Cream       ", info: "| 매장에서 신선하게 만드는 아이스크림"),
    menuItem(item: "3. Drinks          ", info: "| 매장에서 직접 만드는 음료"),
    menuItem(item: "4. Beer            ", info: "| 뉴욕 브루클린 브루어리에서 양조한 맥주")
]
// 메인 메뉴 주입

let burgerItem: [foodItem] = [
    foodItem(item: "1. ShackBurger   |", info: "| 토마토, 양상추, 쉑소스가 토핑된 치즈버거", price:6.9),
    foodItem(item: "2. SmokeShack    |", info: "| 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거", price:8.9),
    foodItem(item: "3. Shroom Burger |", info: "| 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거", price:9.4),
    foodItem(item: "4. Cheeseburger  |", info: "| 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거", price:6.9),
    foodItem(item: "5. Hamburger     |", info: "| 비프패티를 기반으로 야채가 들어간 기본버거", price:5.4)
]
// 버거 메뉴 주입

let frozenCustardItem: [foodItem] = [
    foodItem(item: "1. Shakes              |", info: "| 바닐라, 초콜렛, 솔티드 카라멜, 블랙&화이트, 스트로베리, 피넛버터, 커피", price:5.9),
    foodItem(item: "2. Shake of week       |", info: "| 특별한 커스터드 플레이버", price:6.5),
    foodItem(item: "3. Red Bean Shake      |", info: "| 신선한 커스터드와 함꼐 우유와 레드빈이 블랜딩 된 시즈널 쉐이크", price:6.5),
    foodItem(item: "4. Floats              |", info: "| 루트 비어, 퍼플 카우, 크림시클", price:5.9),
    foodItem(item: "5. Single Cups & Cones |", info: "| 바닐라, 초콜렛, Flavor of the week", price:4.9),
    foodItem(item: "6. Double Cups & Cones |", info: "| 바닐라, 초콜렛, Flavor of the week", price:5.9),
]
// 프로즌커스타드 메뉴 주입

let drinkItem: [foodItem] = [
    foodItem(item: "1. Shack-made Lemonade   |", info: "| 매장에서 직접 만드는 상큼한 레몬에이드(오리지날/시즈널)", price:3.9),
    foodItem(item: "2. Fresh Brewed Iced Tea |", info: "| 직접 유기농 홍차를 우려낸 아이스티", price:3.4),
    foodItem(item: "3. Fifty/Fifty           |", info: "| 레몬에이드와 아이스티의 만남", price:3.5),
    foodItem(item: "4. Fountain Soda         |", info: "| 코카콜라, 코카콜라 제로, 스프라이트, 환타 오렌지, 환타 그레이프", price:2.7),
    foodItem(item: "5. Abira Root Beer       |", info: "| 청량감이 있는 독특한 미국식 무알콜 탄산음료", price:4.4),
    foodItem(item: "6. Bottled Water         |", info: "| 지리산 암반대수층으로 만든 프리미엄 생수", price:1.0),
]
// 음료 메뉴 주입

let beerItem: [foodItem] = [
    foodItem(item: "1. ShackMeister Ale  |", info: "| Bottle", price:3.9),
    foodItem(item: "2. Magpie Brewing Co.|", info: "| Pale Ale, Draft", price:3.4),
    foodItem(item: "3. Magpie Brewing Co.|", info: "| Porter, Draft", price:3.5),
    foodItem(item: "4. Magpie Brewing Co.|", info: "| Wheat,  Draft", price:2.7),
    foodItem(item: "5. The Hand and Malt |", info: "| IPA, Can", price:4.4),
    foodItem(item: "6. The Hand and Malt |", info: "| Mocha Stout, Can", price:1.0),
]
// 맥주 메뉴 주입

