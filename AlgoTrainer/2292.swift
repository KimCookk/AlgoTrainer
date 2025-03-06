//
//  2292.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/2/25.
//

import Foundation

func b2292() {
    if var roomNumber = Int(readLine() ?? "0") {
        var count = 0
        roomNumber -= 1
        repeat {
            count += 1
            roomNumber -= 6 * (count-1)
        }while(roomNumber > 0)
        
        print(count)
    }
}
