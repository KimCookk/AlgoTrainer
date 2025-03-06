//
//  2480.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/16/25.
//

import Foundation

func b2480() {
    if let numbers = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        var frequency = [Int: Int]()
        for number in numbers {
            frequency[number, default: 0] += 1
        }
        
        if let (key, value) = frequency.max(by: { $0.value < $1.value }) {
            if(value == 3) {
                print(10000 + key * 1000)
            } else if(value == 2) {
                print(1000 + key * 100)
            } else {
                print(frequency.keys.max()! * 100)
            }
        }
    }
}
