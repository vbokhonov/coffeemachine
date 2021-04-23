//
//  service.swift
//  Coffee Machine
//
//  Created by Valentyn Bokhonov on 23.04.2021.
//

import Foundation

var coffeeTank: Double = 100
var waterTank: Double = 100
var milkTank: Double = 100
var garbageTank: Double = 0

func addCoffee() {
    coffeeTank += 100
}

func addWater() {
    waterTank += 500
}

func addMilk() {
    milkTank += 300
}

func clearGarbage() {
    garbageTank = 0
}
