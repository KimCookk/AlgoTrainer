//
//  283.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/9/25.
//

import Foundation
extension FunctionExecutor {
    @objc
    func b2839() {
        // 설탕 N 입력 받는다
        // 5로 나누고 몫 x 를 계산 받는다
        // x...1 까지 반복
        // x 나머지가 3으로 나누어 떨어지는지 확인
        if let n = Int(readLine() ?? "0") {
            let x = n / 5
            
            
            for number in (0...x).reversed() {
                let remain = n - (number * 5)
                if(remain % 3 == 0) {
                    print(remain / 3 + number)
                    exit(0)
                }
            }
            
            
            print("-1")
        }
    }
    
}
