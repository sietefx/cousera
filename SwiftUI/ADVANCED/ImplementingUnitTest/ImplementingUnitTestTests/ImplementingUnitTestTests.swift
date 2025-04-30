//
//  ImplementingUnitTestTests.swift
//  ImplementingUnitTestTests
//
//  Created by Gabriel Felix on 11/08/25.
//

import XCTest
@testable import ImplementingUnitTest

final class ImplementingUnitTestTests: XCTestCase {

    func test_calculateTotal_salesTaxTwentyPercent() {
        let items = [
            CheckoutItem(name: "Fish and Chips", price: 625),
            CheckoutItem(name: "Cheeseburguer", price: 850),
            CheckoutItem(name: "Milkshake", price: 325),
            CheckoutItem(name: "Black Coffee", price: 175),
        ]
        let taxPercentage = 20
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        XCTAssertEqual(totalToPay, 2370)
    }
}
