//
//  11650.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/14/25.
//

import Foundation

extension FunctionExecutor {
    @objc
    func b11650() {
        // 입력 개수 입력받기
        // 개수 만큼 순회하며, 입력 받기
        // 튜플 배열에 넣기
        // sort
        if let inputNumber = Int(readLine() ?? "0") {
            var positions = Array<(Int, Int)>()
            for i in 1...inputNumber {
                if let positionInfo = readLine()?.split(separator: " ").compactMap({Int($0)}) {
                    let position: (Int, Int) = (positionInfo[0], positionInfo[1])
                    positions.append(position)
                }
            }
            positions.sort(by: { pre, cur  in
                if(pre.0 > cur.0) {
                    return false
                } else if (pre.0 < cur.0) {
                    return true
                } else {
                    if(pre.1 > cur.1) {
                        return false
                    } else {
                        return true
                    }
                }
            })
            
            for position in positions {
                print("\(position.0) \(position.1)")
            }
        }
    }
}

