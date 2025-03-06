//
//  1436.swift
//  InputCodingTest
//
//  Created by 김태성 on 3/4/25.
//

import Foundation

extension FunctionExecutor {
    @objc func b1436() {
        if let rank = Int(readLine() ?? "0") {
            var count = 0
            var number = 666
            while(true) {
                
                if(check(number: String(number))) {
                    count += 1
                    if(count == rank) {
                        break
                    }
                }
                number += 1
            }
            
            print(number)
        }
    }
    
    func check(number: String) -> Bool {
        var checkStorage: [Character] = Array()
        
        for char in number {
            if(char == "6") {
                checkStorage.append(char)
            } else {
                checkStorage.removeAll()
            }
            
            if(checkStorage.count == 3 ) {
                return true
            }
        }
        
        return false
    }
}
