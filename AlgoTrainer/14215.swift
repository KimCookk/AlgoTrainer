//
//  14215.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/8/25.
//

import Foundation

func b14215() {
    // a, b, c
    // 둘레는 a + b + c
    // 삼각형의 조건 가장 긴 변이 나머디 두 합보다 짧아야한다. a < b + c
    // b + c - a > 0
    // b + c - a > 0 삼각형 조건 만족이야
    
    
    
    // inputs 받는다
    // max 빼고
    // 1...max 순회
    // while(true) break 조건 넘기는거 max < 나머지 둘의 합
    
    if var inputs = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        let maxLength = inputs.max() ?? 0
        let index = inputs.firstIndex(of: maxLength) ?? 0
        inputs.remove(at: index)
        
        for length in (1...maxLength).reversed() {
            if(inputs.reduce(0, +) - length > 0) {
                inputs.append(length)
                break
            }
        }
        
        print(inputs.reduce(0, +))
    }
}
