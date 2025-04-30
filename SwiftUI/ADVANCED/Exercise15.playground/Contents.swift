import UIKit

let paymentsArray = [99.54, 44.31, 89.0, 21.24, 6.5, 63.7, 59.1]

let largePayments = paymentsArray.filter { $0 > 60 }
print(largePayments)

let filteredPaymentsStrings = largePayments.map { String($0) }
print(filteredPaymentsStrings)

let finalListString = filteredPaymentsStrings.reduce("") { $0 + "," + $1}
print(finalListString)
