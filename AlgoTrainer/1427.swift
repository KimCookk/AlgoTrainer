//
//  1427.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/12/25.
//

import Foundation

extension FunctionExecutor {
    @objc
    func b1427() {
        // 입력 값 받기
        // Int array로 변환
        // 정렬, reduce로 문자열로 변환
        
        if var inputs = readLine()?.compactMap({Int(String($0))}) {
            inputs.sort(by: >)
            print(inputs.reduce("") { (result, number) -> String in
                return result + String(number)
            })
        }
    }
}
