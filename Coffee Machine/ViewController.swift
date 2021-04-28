//
//  ViewController.swift
//  Coffee Machine
//
//  Created by Valentyn Bokhonov on 16.04.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var infoDisplayLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoDisplayLable.layer.borderWidth = 1
        infoDisplayLable.layer.cornerRadius = 10
        infoDisplayLable.text = ""
        
        print("Water: \(machine.waterTank) | Milk: \(machine.milkTank) | Coffee: \(machine.coffeeTank) | Garbage: \(machine.garbageTank)")
    }
    
    var machine = CoffeeMachine()

    //Drink buttons
    
    @IBAction func prepareEspressoButton(_ sender: UIButton) {
        machine.prepareDrink(drink: .espresso)
        infoDisplayLable.text = machine.serviceMessage
    }
    @IBAction func prepareAmericanoButton(_ sender: UIButton) {
        machine.prepareDrink(drink: .americano)
        infoDisplayLable.text = machine.serviceMessage
    }
    @IBAction func prepareCappuchinoButton(_ sender: UIButton) {
        machine.prepareDrink(drink: .cappuchino)
        infoDisplayLable.text = machine.serviceMessage
    }
    @IBAction func prepareTeaButton(_ sender: UIButton) {
        machine.prepareDrink(drink: .tea)
        infoDisplayLable.text = machine.serviceMessage
    }
    
    // Service buttons
    @IBAction func addWaterButton(_ sender: UIButton) {
        machine.addWater()
        infoDisplayLable.text = machine.serviceMessage
    }
    @IBAction func addMilkButton(_ sender: UIButton) {
        machine.addMilk()
        infoDisplayLable.text = machine.serviceMessage
    }
    @IBAction func addCoffeeButton(_ sender: UIButton) {
        machine.addCoffee()
        infoDisplayLable.text = machine.serviceMessage
    }
    @IBAction func clearTrayButton(_ sender: UIButton) {
        machine.clearGarbage()
        infoDisplayLable.text = machine.serviceMessage
    }
}

