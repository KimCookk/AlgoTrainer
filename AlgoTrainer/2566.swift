//
//  2566.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/24/25.
//

import Foundation

func b2566() {
    let row = 9
    let column = 9
    
    var maxNumberInfo: (Int, Int, Int) = (0,0,-1)
    
    for i in 1...row {
        if let rowArray = readLine()?.split(separator: " ").compactMap({Int($0)}) {
            for j in 1...column {
                if(rowArray[j-1] > maxNumberInfo.2) {
                    maxNumberInfo.0 = i
                    maxNumberInfo.1 = j
                    maxNumberInfo.2 = rowArray[j-1]
                }
            }
        }
    }
    
    print(maxNumberInfo.2)
    print("\(maxNumberInfo.0) \(maxNumberInfo.1)")
}
