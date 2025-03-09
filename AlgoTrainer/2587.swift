//
//  2587.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/10/25.
//

import Foundation

extension FunctionExecutor {
    @objc
    func b2587() {
        // 5개 수를 입력 받으면서 배열에 넣기
        // sort
        // reduce / 5 평균값
        // array[2] 중앙값 출력
        
        var array = Array<Int>()
        
        for _ in 1...5 {
            if let number = Int(readLine() ?? "0") {
                array.append(number)
            }
        }
        
        array.sort()
        
        let sum = array.reduce(0, +) / array.count
        let middleValue = array[array.count / 2]
        print(sum)
        print(middleValue)
    }
}
