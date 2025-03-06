//
//  2941.swift
//  InputCodingTest
//
//  Created by 김태성 on 1/22/25.
//

import Foundation

func b2941() {
    let croatiaAlphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    
    if var word = readLine() {
        for alphabet in croatiaAlphabet {
            word = word.replacingOccurrences(of: alphabet, with: "*")
        }
        
        print(word.count)
    }
}
