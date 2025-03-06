//
//  B8339.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/10/25.
//

import Foundation

func b8339() {
    if let input = readLine() {
        if let number = Int(input) {
            let range = Range(1...number)
            let sum = range.reduce(0, +)
            
            print(sum)
        }
    }
}
