//
//  10810.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/17/25.
//

import Foundation

func b10810() {
    if let info = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        var bucket = Array(repeating: 0, count: info[0])
        for _ in 1...info[1] {
            if let actionInfo = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                for index in actionInfo[0]...actionInfo[1] {
                    bucket[index-1] = actionInfo[2]
                }
            }
        }
        
        print(bucket.map({String($0)}).joined(separator: " "))
        
    }
}
