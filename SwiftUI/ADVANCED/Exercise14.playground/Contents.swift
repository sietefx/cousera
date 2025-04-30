import UIKit

let originalPrices = [2, 5, 6, 12, 5, 20]

func convertedPrices(originalPrices: [Int], convertionClousure: (_ price: Int) -> Int) -> [Int] {
    var convertedPrices = [Int]()
    for originalPrice in originalPrices {
        let convertedPrice = convertionClousure(originalPrice)
        convertedPrices.append(convertedPrice)
    }
    return convertedPrices
}

convertedPrices(originalPrices: originalPrices, convertionClousure: { $0 * 2})
