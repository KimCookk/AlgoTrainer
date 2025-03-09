//
//  InsertSort.swift
//  AlgoTrainer
//
//  Created by 김태성 on 3/9/25.
//

import Foundation

// 삽입 정렬의 메커니즘은 심플하다. index 0에 해당하는 수 부터 기준이 된다.
// 기준이 되는 수의 앞 쪽 수를 순차적으로 비교를 진행한다.
// 그렇기 때문에 이미 앞쪽은 정렬이 완료 된 상태이며, 해당 수의 자리를 찾아가는 과정이다.
// 삽입 정렬의 특징은 해당 배열이 어느정도 정렬이 되어있다면, 시간적으로나 자원적으로나 좋은 효율을 보인다.
extension FunctionExecutor {
    @objc
    func insertSort() {
        var array: [Int] = [1, 3, 5, 7, 2, 4, 6, 8, 9]
        let count = array.count
        
        for i in 1..<count {
            var j = i
            while(array[j-1] > array[j]) {
                var temp = array[j]
                array[j] = array[j-1]
                array[j-1] = temp
                j -= 1
                print("\(array)")
            }
        }
        
        print("sort result : \(array)")
    }
}
