import UIKit

let reservationsInPerson: Set<String> = ["000-345-3441", "123-456-7890"]
let reservationOverPhone: Set<String> = ["000-345-9991", "432-456-7821", "456-789-0123"]
let reservationOverInternet: Set<String> = ["456-789-9999"]

let inPersonAndOverPhone: Set<String> = reservationsInPerson.union(reservationOverPhone)
let allReservations: Set<String> = inPersonAndOverPhone.union(reservationOverInternet)

print("All reservations: \(allReservations)")

var confirmationCodes: Set<String> = ["LL3441", "LL7890", "LL9991", "LL7821", "LL0123", "LL9999"]
confirmationCodes.insert("LL3455")
confirmationCodes.remove("LL7890")

print("Reservations confirmed: \(confirmationCodes.count). Total Phone numbers: \(allReservations.count).")



enum Week: Int, CaseIterable {
  case Monday = 1
  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

for day in Week.allCases {
  print("\(day) is day \(day.rawValue) of the week")
}
