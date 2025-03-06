//
//  1316.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/23/25.
//

import Foundation

func checkGroupWord(_ word: String) -> Bool {
    var checkArray: [Character] = []
    var pre: Character? = nil
    
    for char in word {
        if(pre != char ) {
            pre = char
            if(checkArray.contains(char)) {
                return false
            } else {
                checkArray.append(char)
            }
        }
    }
    
    return true
}

func b1316() {
    var groupwordCount = 0
    
    if let numberLine = Int(readLine() ?? "") {
        for line in 1...numberLine {
            if let word = readLine() {
                if(checkGroupWord(word)) {
                    groupwordCount += 1
                }
            }
        }
    }
    
    print(groupwordCount)
}
