import Foundation

func b1002() {
    
    if let input = readLine() {
        let numbers = input.split(separator: " ").compactMap { Int($0) }
        if(numbers.count >= 6) {
            let x1 = numbers[0], y1 = numbers[1], r1 = numbers[2]
            let x2 = numbers[3], y2 = numbers[4], r2 = numbers[5]
            
            // 중심 거리의 제곱 계산
            let powDistance = pow(Double(x1 - x2), 2) + pow(Double(y1 - y2), 2)
            let powRadiusMinus = pow(Double(r1 - r2), 2)
            let powRadiusPlus = pow(Double(r1 + r2), 2)
            
            if x1 == x2 && y1 == y2 {
                // 두 원의 중심이 동일한 경우
                if r1 == r2 {
                    print("-1") // 두 원이 완전히 겹침
                } else {
                    print("0") // 중심은 같으나 반지름이 다름
                }
            } else {
                // 두 원의 중심이 다른 경우
                if powDistance > powRadiusPlus {
                    print("0") // 두 원이 멀리 떨어져 있음
                } else if powDistance < powRadiusMinus {
                    print("0") // 한 원이 다른 원 내부에 있음
                } else if powDistance == powRadiusPlus || powDistance == powRadiusMinus {
                    print("1") // 외접 또는 내접
                } else {
                    print("2") // 두 점에서 만남
                }
            }
        }
    } else {
        print("입력 값이 존재하지 않습니다.")
    }
    
}
