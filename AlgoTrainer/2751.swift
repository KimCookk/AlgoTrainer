//
//  2751.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/11/25.
//

import Foundation

extension FunctionExecutor {
    @objc
    func b2751() {
        // 입력 개수를 받는다.
        // 입력 개수 만큼 순회하면서, 입력 받은 값들을 저장한다.
        // 저장한 array를 sort 올림차순
        // array print
        
        if let count = Int(readLine() ?? "0") {
            var array = Array<Int>()
            for _ in 1...count {
                if let number = Int(readLine() ?? "0") {
                    array.append(number)
                }
            }
            
            array.sort(by: <)
            
            for item in array {
                print(item)
            }
        }
    }
}
