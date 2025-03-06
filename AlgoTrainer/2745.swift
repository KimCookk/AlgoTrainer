//
//  2745.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/28/25.
//

import Foundation

func charToNumberValue(_ char: Character) -> Int {
    if let numberValue = Int(String(char)) {
        return numberValue
    } else {
        return Int(char.unicodeScalars.first!.value) - Int("A".unicodeScalars.first!.value) + 10
    }
}

func b2745() {
// 입력 받기 ( 변환 값 , 진법 )
// 변환 값 순회
// 순회하면서 10진법 변화
// 합 저장
    if let input = readLine()?.uppercased().split(separator: " "), let n = Int(input[1]) {
        let value = String(input[0])
        var convertedValue = 0
        
        for (index, char) in value.reversed().enumerated() {
            convertedValue += charToNumberValue(char) * Int(pow(Double(n), Double(index)))
        }
        
        print(convertedValue)
    }
    
    var x = 1.534
    print(Int(ceil(x)))
    
}

