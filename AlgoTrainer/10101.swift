//
//  10101.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/6/25.
//

import Foundation

func b10101() {
    var angles = Array<Int>()
    
    for _ in 1...3 {
        if let angle = Int(readLine() ?? "0") {
            angles.append(angle)
        }
    }
    
    let sumOfAngle = angles.reduce(0,+)
    let setOfAngles = Set(angles)
    
    if(sumOfAngle != 180) {
        print("Error")
    } else {
        if(setOfAngles.count == 1) {
            print("Equilateral")
        } else if(setOfAngles.count == 2) {
            print("Isosceles")
        } else {
            print("Scalene")
        }
    }
}
