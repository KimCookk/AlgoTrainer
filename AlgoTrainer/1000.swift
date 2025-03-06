//
//  1000.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/7/25.
//

import Foundation

func b1000() {
    if let input = readLine() {
        var numbers = input.split(separator: " ").compactMap {Int($0)}
        print(numbers.reduce(0,+))
    } else {
        
    }
}
