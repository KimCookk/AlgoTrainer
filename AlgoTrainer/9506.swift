//
//  9506.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/4/25.
//

import Foundation

func b9506() {
    while(true) {
        if let number = Int(readLine() ?? "0") {
            if(number == -1) {
                break
            }
            var factors: [Int] = Array()
            for n in 1..<number {
                if(number % n == 0) {
                    factors.append(n)
                }
            }
            
            if(factors.reduce(0,+) == number) {
                print("\(number) = \(factors.map({String($0)}).joined(separator: " + "))")
            } else {
                print("\(number) is NOT perfect.")
            }
        }
    }
}


