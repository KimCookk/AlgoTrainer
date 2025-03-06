//
//  2231.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/10/25.
//

import Foundation

func b2231() {
    
    if let input = Int(readLine() ?? "0") {

        for number in 1...input {
            var apartSum = number
            var tempNumber = number
            
            for i in (1...String(tempNumber).count).reversed() {
                apartSum += tempNumber / Int(pow(10.0, Double(i-1)))
                tempNumber = tempNumber % Int(pow(10.0, Double(i-1)))
            }
            
            if(input == apartSum) {
                print(number)
                exit(0)
            }
        }
        
        print(0)
    }
}
