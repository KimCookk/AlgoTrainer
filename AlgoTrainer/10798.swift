//
//  10798.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/24/25.
//

import Foundation

func b10798() {
    var wordArray = Array<String>()
    
    for _ in 1...5 {
        if let word = readLine() {
            wordArray.append(word)
        }
    }
    
    let maxLength = wordArray.map({$0.count}).max() ?? 0
    
    var result = ""
    for columIndex in 0..<maxLength {
        for row in 1...5 {
            let word = wordArray[row-1]
            if(columIndex < word.count) {
                let stringIndex = word.index(word.startIndex, offsetBy: columIndex)
                result.append(word[stringIndex])
            }
        }
    }
    print(result)
}
