//
//  b1157.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/22/25.
//

import Foundation

//func b1157() {
//    if let word = readLine()?.uppercased() {
//        var countArray = Array(repeating: 0, count: (Int("Z") ?? 0) - (Int("A") ?? 0) + 1)
//        for char in word {
//            let index = Int(char.asciiValue ?? 0) - 1
//            if(countArray.count > index) {
//                countArray[index] = countArray[index] + 1
//            }
//        }
//        
//        var maxCount = 0
//        var alpabet = ""
//        for (index, value) in countArray.enumerated() {
//            if(value > maxCount) {
//                maxCount = value
//                alpabet = String(index + 1 + (Int("A") ?? 0))
//            } else if (value == maxCount) {
//                alpabet = "?"
//                break
//            }
//        }
//        
//        print(alpabet)
//    }
//}

func b1157() {
    if let str = readLine()?.uppercased() {
        var frequency: [Character:Int] = [:]
        for letter in str {
            frequency[letter, default: 0] += 1
        }
        
        let maxFrequency = frequency.values.max() ?? 0
        let mostFrequencyLetter = frequency.filter({ $0.value == maxFrequency}).keys
        
        if(mostFrequencyLetter.count > 1){
            print("?")
        } else {
            print(mostFrequencyLetter.first ?? "")
        }
    }
}
