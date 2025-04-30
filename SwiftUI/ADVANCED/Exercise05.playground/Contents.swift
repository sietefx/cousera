import UIKit

enum Dessert {
    case tiramisu(chefName: String?)
    case affogato
    case canolli
}

let favoriteDessert = Dessert.tiramisu(chefName: "Mario")

switch favoriteDessert {
case .tiramisu(let chefName):
    let prefix: String
    if let chefName = chefName {
        prefix = "\(chefName)'s "
    } else {
        prefix = ""
    }
    print("\(prefix)tiramisu is the week's favorites dessert!")
case .affogato:
    print("Affogato is the week's favorites dessert!")
case .canolli:
    print("Canolli is the week's favorites dessert!")
}
