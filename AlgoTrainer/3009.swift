//
//  3009.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/5/25.
//

import Foundation

func b3009() {
    var xStorage: [Int] = Array()
    var yStorage: [Int] = Array()

    for _ in 1...3 {
        if let inputs = readLine()?.split(separator: " ").compactMap({Int($0)}) {
            let x = inputs[0], y = inputs[1]
            if(xStorage.contains(x)) {
                xStorage.removeAll { item in
                    item == x
                }
            } else {
                xStorage.append(x)
            }
            
             if(yStorage.contains(y)) {
                yStorage.removeAll { item in
                    item == y
                }
            } else {
                yStorage.append(y)
            }
        }
    }

    print("\(xStorage[0]) \(yStorage[0])")
}
