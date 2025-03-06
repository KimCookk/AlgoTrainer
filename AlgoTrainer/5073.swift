//
//  5073.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/7/25.
//

import Foundation

func b5073() {
    // a b c 세 변의 길이 입력 받는다 0 0 0 입력 시 종료
    // 모두 같은 경우 Equilateral
    // 두변이 같은 경우 Isosceles
    // 모두 다른 경우 Scalene
    // 가장 긴 변의 길이보자 나머지 두 변 길이가 짧으면 a > b + c -> Invalid a - b - c > 0
    
    // 입력 받고 0, 0, 0 으로 분기
    // 입력 받고 Invalid 분기
    // 아닌 경우 Set에 넣고 count로 판단
    while(true) {
        if let inputs = readLine()?.split(separator: " ").compactMap({Int($0)}) {
            var lengths = Array<Int>()
            lengths.append(inputs[0])
            lengths.append(inputs[1])
            lengths.append(inputs[2])
            
            let lengthsSum = inputs.reduce(0, +)
            if(lengthsSum == 0) {
                exit(0)
            }
            
            
            if((-1)*lengthsSum + (2 * (lengths.max() ?? 0)) >= 0) {
                print("Invalid")
            } else {
                var lengthsSet = Set(lengths)
                if(lengthsSet.count == 1) {
                    print("Equilateral")
                } else if(lengthsSet.count == 2) {
                    print("Isosceles")
                } else {
                    print("Scalene")
                }

            }
        }
    }
}
