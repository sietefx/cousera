
import UIKit

let donationsInformaton = ["John": 56, "Tom": 15, "Charlie": 104]
donationsInformaton.map { "\($0.key) has donated \($0.value) so far" }
    .forEach { print($0) }
