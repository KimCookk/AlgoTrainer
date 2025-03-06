//
//  2444.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/21/25.
//

import Foundation

func b2444() {
    if let number = Int(readLine() ?? "") {
        var isPlus = true
        let lineCount = 2 * number - 1
        var starCount = 1
        
        for line in 1...lineCount {
            if(line != 1) {
                if(isPlus) {
                    starCount += 2
                } else {
                    starCount -= 2
                }
            }
            
            let emptyCount = (lineCount - starCount) / 2
            let lineString = String(repeating: " ", count: emptyCount) + String(repeating: "*", count: starCount)
            
            print(lineString)
            if(starCount == lineCount) {
                isPlus = false
            }
        }
    }
}
