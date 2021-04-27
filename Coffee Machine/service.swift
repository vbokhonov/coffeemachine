//
//  service.swift
//  Coffee Machine
//
//  Created by Valentyn Bokhonov on 23.04.2021.
//

import Foundation

var coffeeTank: Double = 0
var waterTank: Double = 0
var milkTank: Double = 0
var garbageTank: Double = 0
var serviceMessage: String = ""

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
