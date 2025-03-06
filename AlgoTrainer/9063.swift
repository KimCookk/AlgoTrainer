//
//  9063.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/6/25.
//

import Foundation

func b9063() {
    // 갯수 받기
    // input 받기
    // x 좌표의 최솟값 최댓값
    // y 좌표의 최솟값 최댓값
    // (x.max - x.min) * (y.max - y.min) 출력
    if let count = Int(readLine() ?? "0") {
        var xArray: [Int] = Array()
        var yArray: [Int] = Array()
        
        for _ in 1...count {
            if let posistion = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                xArray.append(posistion[0])
                yArray.append(posistion[1])
            }
        }
        
        let xMax = xArray.max() ?? 0
        let xMin = xArray.min() ?? 0
        let yMax = yArray.max() ?? 0
        let yMin = yArray.min() ?? 0
        
        print((xMax - xMin) * (yMax - yMin))
    }
}
