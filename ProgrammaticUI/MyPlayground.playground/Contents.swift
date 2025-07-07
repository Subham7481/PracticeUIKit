import UIKit
import Foundation
import Combine

func filterEvenNumbers(array: [Int]) -> [Int]{
    var result = [Int]()
    for number in array{
        if number % 2 == 0 {
            result.append(number)
        }
    }
    return result
}
let numbers = [1,2,3,4,5,6,7,8]


numbers.publisher
    .filter { $0 % 2 == 0}
    .collect()
    .sink { result in
        print("result from combine example = \(result)")
    }

//let evenNumbers = filterEvenNumbers(array: numbers)
//print(evenNumbers)
