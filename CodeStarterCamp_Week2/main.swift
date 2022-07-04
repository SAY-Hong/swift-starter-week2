
import Foundation


//Step 2: 내 번호와 맞추어보기!

var lottoWinningNumbers: Set<Int> = []

for _ in 1...12{
    lottoWinningNumbers.insert(Int.random(in: 1...45))
    if lottoWinningNumbers.count == 6 {
        break
    }
}

let myLottoNumbers: [Int] = [2, 3, 5, 10, 21, 28]


print("이번주 당첨번호는 \(lottoWinningNumbers) 입니다")
print("이번주 내번호는 \(myLottoNumbers) 입니다")

if lottoWinningNumbers.intersection(myLottoNumbers).count != 0 {
    print("축하합니다! 겹치는 번호는 \(lottoWinningNumbers.intersection(myLottoNumbers)) 입니다!")
}
else {
    print("아쉽지만 겹치는 번호가 없습니다.")
}
