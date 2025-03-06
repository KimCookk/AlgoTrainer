//
//  5086.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/3/25.
//

import Foundation

func isFactor(_ firstNumber: Int, _ secondNumber: Int) -> Bool{
    return secondNumber % firstNumber == 0
}

func isMultiple(_ firstNumber: Int, _ secondNumber: Int) -> Bool {
    return firstNumber % secondNumber == 0
}

func b5086() {
    // 수 입력 받기
    // 0 0 일 때까지 무한 반복
    // 첫번째 수가 두번째 수보다 크면 배수 판단
    // 첫번째 수가 두번째 수보다 작으면 약수 판단
    
    while(true) {
        if let numbers = readLine()?.split(separator: " ").compactMap({Int($0)}) {
            let firstNumber = numbers[0]
            let secondsNumber = numbers[1]
            if(firstNumber == 0 && secondsNumber == 0) {
                break
            } else {
                if(firstNumber > secondsNumber) {
                    if(isMultiple(firstNumber, secondsNumber)) {
                        print("multiple")
                    } else {
                        print("neither")
                    }
                } else {
                    if(isFactor(firstNumber, secondsNumber)) {
                        print("factor")
                    } else {
                        print("neither")
                    }
                }
            }
        } else {
            break
        }
    }
}
