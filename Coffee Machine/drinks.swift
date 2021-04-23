//
//  drinks.swift
//  Coffee Machine
//
//  Created by Valentyn Bokhonov on 23.04.2021.
//

import Foundation

enum DrinkType {
    case espresso, americano, cappuchino, tea
    
    var coffeeNeeded: Double {
        switch self {
        case .espresso: return 10
        case .americano: return 15
        case .cappuchino: return 10
        case .tea: return 0
        }
    }
    
    var waterNeeded: Double {
        switch self {
        case .espresso: return 40
        case .americano: return 60
        case .cappuchino: return 50
        case .tea: return 150
        }
    }
    
    var milkNeeded: Double {
        switch self {
        case .espresso: return 0
        case .americano: return 0
        case .cappuchino: return 40
        case .tea: return 0
        }
    }
    
    var garbage: Double {
        switch self {
        case .espresso: return 10
        case .americano: return 15
        case .cappuchino: return 10
        case .tea: return 0
        }
    }
}

func drinkPrepare(drink: DrinkType) {
    if coffeeTank >= drink.coffeeNeeded && waterTank >= drink.waterNeeded && milkTank >= drink.milkNeeded && garbageTank < 50 {
        coffeeTank -= drink.coffeeNeeded
        waterTank -= drink.waterNeeded
        milkTank -= drink.milkNeeded
        garbageTank += drink.garbage
        print("Your \(drink), Sir!")
    } else {
        print("Not enough ingredients")
    }
}
