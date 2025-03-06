//
//  10813.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/18/25.
//

import Foundation

func b10813() {
    if let info = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        var bucket = Array(stride(from: 1, to: info[0] + 1, by: 1))
        
        for _ in 0...info[1]-1 {
            if let switchIndex = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                let firstIndex = switchIndex[0] - 1
                let secondsIndex = switchIndex[1] - 1
                
                bucket.swapAt(firstIndex, secondsIndex)
            }
        }
        
        print(bucket.map({String($0)}).joined(separator: " "))
    }
}


