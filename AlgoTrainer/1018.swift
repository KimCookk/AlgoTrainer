//
//  1018.swift
//  InputCodingTest
//
//  Created by 김태성 on 2/11/25.
//

import Foundation

func b1018() {
    // W부터 시작하는 체스판 8 x 8 정의
    // B부터 시작하는 체스판 8 x 8 정의
    // 체스판 사이즈 row column 받기
    // Input 체스 받기
    // Input 체스 순회 0...input.row - row, 0...input.column - column
    // 순회하면서 W체스판, B체스판 다시 칠해야하는 개수 카운팅
    // 모두 순회하면서 최소 카운팅 출력
    var wStartChessBoard = Array(repeating: Array(repeating: "", count: 8), count: 8)
    var bStartChessBoard =  Array(repeating: Array(repeating: "", count: 8), count: 8)
    
    var reverseFlag = false
    for row in 0..<8 {
        for column in 0..<8 {
            if(column % 2 == 0) {
                if(reverseFlag) {
                    wStartChessBoard[row][column] = "B"
                    bStartChessBoard[row][column] = "W"
                } else {
                    wStartChessBoard[row][column] = "W"
                    bStartChessBoard[row][column] = "B"
                }
            } else {
                if(reverseFlag) {
                    wStartChessBoard[row][column] = "W"
                    bStartChessBoard[row][column] = "B"
                } else {
                    wStartChessBoard[row][column] = "B"
                    bStartChessBoard[row][column] = "W"
                }
            }
        }
        reverseFlag = !reverseFlag
    }
    
    if let sizes = readLine()?.split(separator: " ").compactMap({Int($0)}) {
        let rowSize = sizes[0]
        let columnSize = sizes[1]
        var inputChessBoard = Array<Array<String>>()
        
        for row in 0..<rowSize {
            if let rowChessBoard = readLine()?.compactMap({String($0)}) {
                inputChessBoard.append(rowChessBoard)
            }
        }
        
        var minChangeCount = Int.max

        
        for row in 0...inputChessBoard.count - 8 {
            for column in 0...inputChessBoard[row].count - 8 {
                var wStartChangeCount = 0
                var bStartChangeCount = 0
                
                for i in 0..<8 {
                    for j in 0..<8 {
                        let inputColor = inputChessBoard[row + i][column + j]
                        let wColor = wStartChessBoard[i][j]
                        let bColor = bStartChessBoard[i][j]
                        
                        if(inputColor != wColor) {
                            wStartChangeCount += 1
                        }
                        
                        if(inputColor != bColor) {
                            bStartChangeCount += 1
                        }
                    }
                }
                if(minChangeCount > min(wStartChangeCount, bStartChangeCount)) {
                    minChangeCount = min(wStartChangeCount, bStartChangeCount)
                }
            }
        }
        print(minChangeCount)
    }
}
