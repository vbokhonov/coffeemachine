//
//  CoffeeMachine.swift
//  Coffee Machine
//
//  Created by Valentyn Bokhonov on 23.04.2021.
//

import Foundation
import UIKit

var errorText: String = ""

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


func prepareDrink(drink: DrinkType) {
    if coffeeTank >= drink.coffeeNeeded {
        
        if waterTank >= drink.waterNeeded {
            
            if milkTank >= drink.milkNeeded {
                
                if garbageTank < 50 {
                    
                    coffeeTank -= drink.coffeeNeeded
                    waterTank -= drink.waterNeeded
                    milkTank -= drink.milkNeeded
                    garbageTank += drink.garbage
                    print("Your \(drink), Sir!")
                    errorText = "Your \(drink), Sir!"
                    
                } else {
                    print("Garbage tank is full! Clean it!")
                    errorText = "Garbage tank is full! Clean it!"
                }
                
            } else {
                print("Not enough milk")
                errorText = "Not enough milk"
            }
            
        } else {
            print("Not enough water")
            errorText = "Not enough water"
        }
        
    } else {
        print("Not enough coffee")
        errorText = "Not enough coffee"
    }
}



