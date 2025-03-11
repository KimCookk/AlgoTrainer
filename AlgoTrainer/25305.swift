//
//  25305.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/11/25.
//

import Foundation

extension FunctionExecutor {
    @objc
    func b25305() {
        // 커트 순위 입력 받기
        // 점수 입력 받기
        // 정렬
        
        if let info = readLine()?.split(separator: " ").compactMap({Int($0)}) {
            let rank = info[1]
            if var scores = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                scores.sort(by: >)
                print(scores[rank-1])
            }
        }
    }
}
