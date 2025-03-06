//
//  2738.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/24/25.
//

import Foundation

func b2738() {
    if let infos = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        let row = infos[0]
        let column = infos[1]
        
        
        var firstMatrix = Array(repeating: Array(repeating: 0, count: column), count: row)
        var secondsMatrix = Array(repeating: Array(repeating: 0, count: column), count: row)
        
        for i in 1...row {
            if let rowInfo = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                for j in 1...column {
                    firstMatrix[i-1][j-1] = rowInfo[j-1]
                }
            }
        }
        
        for i in 1...row {
            if let rowInfo = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                for j in 1...column {
                    secondsMatrix[i-1][j-1] = rowInfo[j-1]
                }
            }
        }
        
        
        for i in 1...row {
            let firstRowArray = firstMatrix[i-1]
            let secondRowArray = secondsMatrix[i-1]
            
            print(zip(firstRowArray, secondRowArray).compactMap { return String($0 + $1)}.joined(separator: " "))
        }
    }
}
