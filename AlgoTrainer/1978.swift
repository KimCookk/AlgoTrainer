//
//  1978.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/4/25.
//

import Foundation

func b1978() {
    if let _ = Int(readLine() ?? "0") {
        var result = 0
        if let numbers = readLine()?.split(separator: " ").compactMap({Int($0)}) {
            for number in numbers {
                var factors = 0
                 if(number != 1) {
                     for n in 1...Int(sqrt(Double(number))) {
                         if(number % n == 0) {
                             factors += 1
                         }
                     }
                 }
                if(factors == 0) {
                    result += 1
                }
            }
        }
        print(result)
    }

}
