//
//  11005.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/30/25.
//

import Foundation


func numberToDecimalNumber(_ number: Int) -> String {
    var decimalNumber = "\(number)"
    if(number > 9) {
        decimalNumber = String(Character(UnicodeScalar.init(UInt32(number - 10) + "A".unicodeScalars.first!.value) ?? UnicodeScalar.init(0)))
    }
    
    return decimalNumber
}


func b11005() {
// 입력 받기
// 수를 진법으로 계속 나눈다 ( if 수가 진법 보다 낮아진 경우)
// 몫 과 나머지를 관리한다
//
    if let input = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        var number = input[0]
        let decimal = input[1]
        var result = ""
        
        while(number >= decimal) {
            let remain = number % decimal
            number = number / decimal
            
            result.append("\(numberToDecimalNumber(remain))")
        }
        
        result.append(numberToDecimalNumber(number))
        
        print(String(result.reversed()))
    }
    
}
