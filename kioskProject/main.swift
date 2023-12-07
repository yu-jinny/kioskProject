//
//  main.swift
//  kioskProject
//
//  Created by t2023-m0028 on 12/6/23.
//

import Foundation

print("""
"SHAKESHACK BURGER 에 오신걸 환영합니다."
아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

""")
// Greetings

func requirement1(){
    while true {
        printMainMenu()
        print("-> 메뉴를 선택해주세요: ", terminator: "")
        if let input = readLine(), let menuNumber = Int(input) {
            switch menuNumber {
            case 1:
                chooseBurgersMenu()
            case 2:
                print("Forzen Custard메뉴를 선택했습니다.")
                printFrozenCustardMenu()
            case 3:
                print("Drinks 메뉴를 선택했습니다.")
                printDrinksMenu()
            case 4:
                print("Beer 메뉴를 선택했습니다.")
                printBeerMenu()
            case 0:
                print("프로그램을 종료합니다.")
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
//선택1. 메인 메뉴 선택

requirement1()

