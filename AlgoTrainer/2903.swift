//
//  2903.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/2/25.
//

import Foundation

func b2903(){
    if let processCount = Int(readLine() ?? "") {
        let rowSquareCount = pow(2, processCount)
        
        print(pow(rowSquareCount + 1, 2))
    }
}

