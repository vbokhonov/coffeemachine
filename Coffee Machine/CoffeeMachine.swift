//
//  CoffeeMachine.swift
//  Coffee Machine
//
//  Created by Valentyn Bokhonov on 23.04.2021.
//

import UIKit

class CoffeeMachine {
    
    var coffeeTank: Double = 0
    var waterTank: Double = 0
    var milkTank: Double = 0
    var garbageTank: Double = 0
    var serviceMessage: String = ""
    
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
    
    func addCoffee() {
        coffeeTank += 100
        serviceMessage = "Coffee added!"
    }

    func addWater() {
        waterTank += 500
        serviceMessage = "Water added!"
    }

    func addMilk() {
        milkTank += 300
        serviceMessage = "Milk added!"
    }

    func clearGarbage() {
        garbageTank = 0
        serviceMessage = "Tank cleaned!"
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
                        serviceMessage = "Your \(drink), Sir!"
                        
                    } else {
                        print("Garbage tank is full! Clean it!")
                        serviceMessage = "Garbage tank is full! Clean it!"
                    }
                    
                } else {
                    print("Not enough milk")
                    serviceMessage = "Not enough milk"
                }
                
            } else {
                print("Not enough water")
                serviceMessage = "Not enough water"
            }
            
        } else {
            print("Not enough coffee")
            serviceMessage = "Not enough coffee"
        }
    }
    
}

