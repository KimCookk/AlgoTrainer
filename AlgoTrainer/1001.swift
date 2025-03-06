//
//  1001.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/7/25.
//

import Foundation

func b1001() {
    if let input = readLine() {
        let numbers = input.split(separator: " ").compactMap { Int($0) }
        print(numbers[0] - numbers[1])
    } else {
        print("입력 값이 존재하지 않습니다.")
    }
}
