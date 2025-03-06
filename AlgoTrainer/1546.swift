//
//  1546.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/19/25.
//

import Foundation

func b1546() {
    if let _ = Int(readLine() ?? "") {
        if let scores = readLine()?.split(separator: " ").compactMap({Double($0)}) {
            let maxScore = scores.max() ?? 100
            let newScores = scores.map{ score in
                return score/maxScore * 100
            }
            
            print(newScores.reduce(0.0, +) / Double(newScores.count))
        }
    }
    
}
