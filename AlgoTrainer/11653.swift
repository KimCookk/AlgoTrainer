//
//  11653.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/4/25.
//

import Foundation

func b11653() {
    if var number = Int(readLine() ?? "0") {
        var factors: [Int] = Array()
        if(number > 2) {
            while(number > 2) {
                for n in 2...number {
                    if(number % n == 0) {
                        factors.append(n)
                        number /= n
                        break
                    }
                }
            }
        }
        
        if(number == 2) {
            factors.append(2)
        }
        
        for factor in factors {
            print(factor)
        }
    }
    
    
}
