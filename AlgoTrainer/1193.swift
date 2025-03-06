//
//  1193.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/2/25.
//

import Foundation

func b1193() {
    // input 입력값을 받는다
    // layer의 몇 번째인지 필요
    // layer가 짝수 및 홀수
    // 해당에 맞게 분수 형태 출력
    var firstNumber = 1
    var secondNumber = 1
    var layer = 1

    if let x = Int(readLine() ?? "0") {
        while(Int(pow(Double(layer), 2) + Double(layer)) / 2 < x) {
            layer += 1
        }

        let distance =  x - Int(pow(Double(layer-1), 2) + Double(layer-1)) / 2 - 1
        
        if(layer % 2 == 0) {
            // 짝수 층
            secondNumber = layer
            secondNumber -= distance
            firstNumber += distance
        } else {
            // 홀수 층
            firstNumber = layer
            firstNumber -= distance
            secondNumber += distance
        }
        
        print("\(firstNumber)/\(secondNumber)")
    }
}
