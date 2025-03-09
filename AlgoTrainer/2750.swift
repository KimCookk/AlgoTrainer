//
//  2750.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/10/25.
//

import Foundation

extension FunctionExecutor {
    @objc
    func b2750() {
        var array = Array<Int>()
        
        if let count = Int(readLine() ?? "0") {
            for _ in 0..<count {
                if let number = Int(readLine() ?? "0") {
                    array.append(number)
                }
            }
        }
        
        array.sort()
        
        for number in array {
            print(number)
        }
    }
}
