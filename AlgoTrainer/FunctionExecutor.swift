//
//  FunctionExecutor.swift
//  InputCodingTest
//
//  Created by 김태성 on 3/4/25.
//

import Foundation


class FunctionExecutor: NSObject {

    func anotherFunction() {
        print("anotherFunction 실행됨!")
    }

    func executeFunction(named functionName: String) {
        let selector = NSSelectorFromString(functionName)  // 함수 이름을 Selector로 변환

        self.perform(selector)
//        if self.responds(to: selector) {
//            
//        } else {
//            print("⚠️ '\(functionName)' 함수가 존재하지 않습니다.")
//        }
    }
}
