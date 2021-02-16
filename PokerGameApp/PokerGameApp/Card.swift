//
//  Card.swift
//  PokerGameApp
//
//  Created by 박정하 on 2021/02/16.
//

import Foundation


class Card{
    enum suit : String { //모양과 숫자에 enum을 선택한 이유는 유니코드, 숫자(문자열) 등이 다른 값과 혼동하기 쉬울 것 같아서 enum으로 선언하면 좀 더 명확한 표현으로 접근할 수 있으니까 입니다.
        case spade = "\u{2660}", club = "\u{2663}", heart = "\u{2665}", diamond = "\u{2666}"
        var suitValue : String {
            return self.rawValue
        }
    }
    
    enum number : String{ //Nested enum이 중첩 enum문으로 알고 있는데, 10미만인 숫자 enum 안에 10 이상의 숫자 enum을 중첩해서 처리하려고 하니까 접근 할때 오히려 enum.enum으로 접근할때 따로따로 해야 해서 한 enum에 모두 선언했습니다.
        case two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9" // 출력할 때 += 으로 간단히 연산하기 위하여 타입을 맞추다 보니까 rawValue를 하나하나 선언 했는데 상당히 비효율적인것 같습니다.
        case Jack = "J", Queen = "Q", King = "K", Ace = "A"
        var numvalue: number {
            return Card.number(rawValue: self.rawValue)!
        }
    }
    
    func returnValue() -> String{
        let suit : suit = .spade, number : number = .Queen
        var returnString : String = ""
        returnString += suit.suitValue
        returnString += number.numvalue.rawValue
        return returnString
    }
}
