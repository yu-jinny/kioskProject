//
//  menus.swift
//  kioskProject
//
//  Created by t2023-m0028 on 12/6/23.
//

import Foundation
func printMainMenu() {
    print("""
[ SHAKESHACK MENU ]
1. Burgers         | 앵거스 비프 통살을 다져만든 버거
2. Ice Cream       | 매장에서 신선하게 만드는 아이스크림
3. Drinks          | 매장에서 직접 만드는 음료
4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주
5. 계산하기
0. 종료            | 프로그램 종료

""")
}
// 메인 메뉴 출력 함수

func chooseBurgersMenu(){
    while true {
        printBurgersMenu()
        print("-> 메뉴를 선택해주세요: ", terminator: "")
        if let input = readLine(), let menuNumber = Int(input) {
            switch menuNumber {
            case 1:
                print("ShackBurger를 선택했습니다.")
                chooseItem()
            case 2:
                print("SmokeShack을 선택했습니다.")
            case 3:
                print("Shroom Burger를 선택했습니다.")
            case 4:
                print("Cheeseburger를 선택했습니다.")
            case 5:
                print("Hamburger를 선택했습니다.")
            case 0:
                print("뒤로가기를 선택했습니다.")
                exit(0)
            default:
                print("잘못된 선택입니다. 다시 시도해주세요.")
                requirement1()
            }
        } else {
            print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
            requirement1()
        }
    }
}
//버거 선택 화면

func chooseItem(){
    while true {
        print("""
    위 메뉴를 장바구니에 추가하시겠습니까?
1. 확인                2. 취소

""", terminator: "")
        if let input = readLine(), let menuNumber = Int(input) {
            switch menuNumber {
            case 1:
                print(" 가 장바구니에 추가되었습니다.")
            case 2:
                print("취소를 선택했습니다.")
            default:
                print("잘못된 선택입니다. 다시 시도해주세요.")
                requirement1()
            }
        } else {
            print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
            requirement1()
        }
    }
}

func printBurgersMenu(){
    print("""
"Burgers 메뉴를 선택했습니다."

[ Burgers MENU ]
1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
0. 뒤로가기        | 뒤로가기

""")
}
// 버거 메뉴 출력 함수

func printFrozenCustardMenu(){
print("""
[ Frozen Custard MENU ]
1. Shakes              | W 5.9 | 바닐라, 초콜렛, 솔티드 카라멜, 블랙&화이트, 스트로베리, 피넛버터, 커피
2. Shake of week       | W 6.5 | 특별한 커스터드 플레이버
3. Red Bean Shake      | W 6.5 | 신선한 커스터드와 함꼐 우유와 레드빈이 블랜딩 된 시즈널 쉐이크
4. Floats              | W 5.9 | 루트 비어, 퍼플 카우, 크림시클
5. Single Cups & Cones | W 4.9 | 바닐라, 초콜렛, Flavor of the week
6. Double Cups & Cones | W 5.9 | 바닐라, 초콜렛, Flavor of the week
0. 뒤로가기               | 뒤로가기

""")
}
// 프로즌 커스타드 메뉴 출력 함수

func printDrinksMenu(){
print("""
[ Drinks MENU ]
1. Shack-made Lemonade   | W 3.9 | 매장에서 직접 만드는 상큼한 레몬에이드(오리지날/시즈널)
2. Fresh Brewed Iced Tea | W 3.4 | 직접 유기농 홍차를 우려낸 아이스티
3. Fifty/Fifty           | W 3.5 | 레몬에이드와 아이스티의 만남
4. Fountain Soda         | W 2.7 | 코카콜라, 코카콜라 제로, 스프라이트, 환타 오렌지, 환타 그레이프
5. Abira Root Beer       | W 4.4 | 청량감이 있는 독특한 미국식 무알콜 탄산음료
6. Bottled Water         | W 1.0 | 지리산 암반대수층으로 만든 프리미엄 생수
0. 뒤로가기                 | 뒤로가기

""")
}
// 음료 메뉴 출력 함수

func printBeerMenu(){
print("""
[ Beer MENU ]
1. ShackMeister Ale  | W 9.8 | Bottle
2. Magpie Brewing Co.| W 6.8 | Pale Ale, Draft
3. Magpie Brewing Co.| W 6.8 | Porter, Draft
4. Magpie Brewing Co.| W 6.8 | Wheat,  Draft
5. The Hand and Malt | W 6.8 | IPA, Can
6. The Hand and Malt | W 6.8 | Mocha Stout, Can
0. 뒤로가기                 | 뒤로가기

""")
}
// 맥주 메뉴 출력 함수
