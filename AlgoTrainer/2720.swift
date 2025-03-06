//
//  2720.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/30/25.
//

import Foundation


func b2720() {
    // input 카운트 수 받기
    // 반복문을 통해 값 받기
    // 0.25 , 0.10, 0.05 , 0.01 순서대로 나누기
    if let rowCount = Int(readLine() ?? "0") {
        let coinPrices = [25, 10, 5, 1]
        for _ in 1...rowCount {
            var result: [String] = []
            if var price = Int(readLine() ?? "0") {
                for coinPrice in coinPrices {
                    result.append(String(price / coinPrice))
                    price = price % coinPrice
                }
            }
            
            print(result.joined(separator: " "))
        }
    }
}
