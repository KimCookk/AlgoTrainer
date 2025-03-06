//
//  2563.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/24/25.
//

import Foundation

func b2563() {
    var matrix = Array(repeating: Array(repeating: false, count: 100), count: 100)
    var startPositions = Array<(Int, Int)>()
    
    if let lineNumber = Int(readLine() ?? "") {
        for _ in 1...lineNumber {
            if let positions = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                let position = (positions[0]-1, positions[1]-1)
                startPositions.append(position)
            }
        }
    }
    
    for startPosition in startPositions {
        for row in startPosition.0..<(startPosition.0 + 10) {
            for column in startPosition.1..<(startPosition.1 + 10) {
                if(row < 100 && column < 100) {
                    matrix[row][column] = true
                }
            }
        }
    }
    
    var sum = 0
    for row in 0..<matrix.count {
        sum += matrix[row].filter({ $0 == true}).count
    }
    
    print(sum)
}
