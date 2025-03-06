//
//  b6052.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/18/25.
//

import Foundation

func b3052() {
    var remains = Array(repeating: false, count: 42)

    for _ in 1...10 {
        if let number = Int(readLine() ?? "") {
            let remain = number % 42
            remains[remain] = true
        }
    }

    remains = remains.filter({$0 == true})
    print(remains.count)
}
