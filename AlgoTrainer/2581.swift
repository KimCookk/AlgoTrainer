//
//  2581.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/4/25.
//

import Foundation

func isPrime(_ number: Int) -> Bool {
    if(number == 1) {
        return false
    } else if(number == 2 || number == 3) {
        return true
    } else {
        for n in 2...Int(sqrt(Double(number))) {
            if(number % n == 0) {
                return false
            }
        }
        return true
    }
}

func b2581() {
    if let firstNumber = Int(readLine() ?? "0") {
        if let secondNumber = Int(readLine() ?? "0") {
            var primeNumbers: [Int] = Array()
            for number in firstNumber...secondNumber {
                if(isPrime(number)) {
                    primeNumbers.append(number)
                }
            }
            
            if(primeNumbers.count > 0) {
                print("\(primeNumbers.reduce(0,+))")
                print("\(primeNumbers[0])")
            } else {
                print("-1")
            }
        }
    }
}
