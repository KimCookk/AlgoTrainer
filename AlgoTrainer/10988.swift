//
//  10988.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/22/25.
//

import Foundation

func b10988() {
    if let word = readLine() {
        if(Array(word) == word.reversed()) {
            print(1)
        } else {
            print(0)
        }
    }
}
