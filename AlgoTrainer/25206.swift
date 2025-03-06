//
//  25206.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/23/25.
//

import Foundation

let subjectScoreDictionary: [String: Double] = ["A+":4.5, "A0":4.0, "B+":3.5, "B0":3.0, "C+":2.5, "C0":2.0, "D+": 1.5, "D0": 1.0, "F": 0.0]

func calScore(_ score: Double, _ subjectScore: String) -> Double {
    return score * subjectScoreDictionary[subjectScore, default: 0.0]
}

func b25206() {
    var subjectCount = 0.0
    var sumScore = 0.0
    for line in 1...20 {
        if let info = readLine()?.split(separator: " "), info.count == 3 {
            if let score = Double(info[1]) {
                let subjectScore = info[2]
                if(subjectScore.elementsEqual("P") == false) {
                    sumScore += calScore(score, String(subjectScore))
                    subjectCount += score
                }
            }
        }
    }
    
    print(sumScore / subjectCount)
}
