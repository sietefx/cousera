import UIKit

enum Ingredient: String {
    case Tomato = "Tomate sapecado"
    case Cheese = "Queijo defumado"
    case Bacon = "Banconzitos"
    case Onion = "Cebola"
}

let ingredient = Ingredient.Tomato

switch ingredient {
    case .Tomato:
    print("\(ingredient.rawValue), feito na brasa, com um sabor delicioso.")
    case .Cheese:
    print("\(ingredient.rawValue), com sabor trufas arredondadas.")
    case .Bacon:
    print("\(ingredient.rawValue), feito no óleo fervente.")
    case .Onion:
    print("\(ingredient.rawValue), com flocos crocantes.")
}

enum ReceipeInformation {
    case allergens(information: String)
}

let receipeInformation = ReceipeInformation.allergens(information: "Contém glúten e soja")

switch receipeInformation {
case .allergens(let information):
    print("This recipe contains the following allergens: \(information).")
}
