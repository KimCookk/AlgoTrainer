//
//  SelectionSort.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/9/25.
//

import Foundation

// 조건에 따라 정렬한다고 하였을 때, 선택 정렬은 순회하면서 해당 조건에 만족하는 값을 앞부터 채운다.
func selectionSort() {
    var array: [Int] = [1, 3, 5, 7, 2, 4, 6, 8, 9]
    let length = array.count
    
    for startIndex in 0..<length{
        var minValue = Int.max
        var minIndex = 0
        
        for selectIndex in startIndex..<length {
            let value = array[selectIndex]
            if(minValue > value) {
                minValue = value
                minIndex = selectIndex
            }
        }
        
        let temp = array[startIndex]
        array[startIndex] = minValue
        array[minIndex] = temp
        
        print(array)
    }
    
    print("sort result : \(array)")
}
