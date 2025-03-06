//
//  10811.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/18/25.
//

import Foundation

func b10811() {
    if let infos = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        var numbers = Array(1...infos[0])
        
        for _ in 1...infos[1] {
            if let indicies = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                var firstIndex = indicies[0] - 1
                var secondIndex = indicies[1] - 1
                
                while(firstIndex < secondIndex) {
                    numbers.swapAt(firstIndex, secondIndex)
                    firstIndex += 1
                    secondIndex -= 1
                }
            }
        }
        
        print(numbers.map({String($0)}).joined(separator: " "))
    }
}
