//
//  2501.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/3/25.
//

import Foundation

func b2501() {
    // input 받기
    // 최초 count = input[1]와 facotr = 0 초기화
    // 1...input[0] 순회 약수 나오는 경우 factor = n , Count -= 1
    // count 0 되면 break

    if let inputs = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        let number = inputs[0]
        var count = inputs[1]
        var factor = 0
        
        for n in 1...number {
            if(number % n == 0) {
                factor = n
                count -= 1
            }
            
            if(count == 0) {
                print(factor)
                break
            }
        }
        
        if(count != 0) {
            print("0")
        }
    }
}
