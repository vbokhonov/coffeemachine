//
//  ViewController.swift
//  Coffee Machine
//
//  Created by Valentyn Bokhonov on 16.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        addMilk()
//        addWater()
//        addCoffee()
//        addWater()
//        addWater()
//        clearGarbage()
        
        drinkPrepare(drink: .cappuchino)
        
        print("Water: \(waterTank) | Milk: \(milkTank) | Coffee: \(coffeeTank) | Garbage: \(garbageTank)")
    }

    

}

