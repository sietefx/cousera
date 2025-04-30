import UIKit

enum PastaTypes: Int {
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12
}

let cookingTime = PastaTypes.spaghetti.rawValue
print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")

func cookingPerfectPasta(pasta: PastaTypes) {
    let cookingTime = pasta.rawValue
    print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}
cookingPerfectPasta(pasta: .rigatoni)
