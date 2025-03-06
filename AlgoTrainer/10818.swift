//
//  10818.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/17/25.
//

import Foundation

func b10818() {
    if let numberCount = readLine(), let numbers = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        print("\(numbers.min() ?? 0) \(numbers.max() ?? 0)")
    }
}
