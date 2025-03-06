//
//  BubbleSort.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/10/25.
//

import Foundation

// 버블 정렬은 거품이 위로 올라가는 것과 같이 어떻게 보면 선택정렬의 반대인데, 앞에서부터 순회하여 바로 옆 값과 비교하여 큰 값을 뒤로 보낸다.

func BubbleSort() {
    var array: [Int] = [1, 3, 5, 7, 2, 4, 6, 8, 9]
    let count = array.count
    
    for i in 1..<count {
        for j in 0..<count-i {
            var pre, next: Int
            pre = array[j]
            next = array[j+1]
            
            if(pre > next) {
                array.swapAt(j, j+1)
            }
        }
        print(array)
    }
    print("sort result : \(array)")
}
