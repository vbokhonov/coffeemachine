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
        
        print("Water: \(waterTank) | Milk: \(milkTank) | Coffee: \(coffeeTank) | Garbage: \(garbageTank)")
    }

    //Drink buttons
    
    @IBAction func prepareEspressoButton(_ sender: UIButton) {
        prepareDrink(drink: .espresso)
        infoDisplayLable.text = errorText
    }
    @IBAction func prepareAmericanoButton(_ sender: UIButton) {
        prepareDrink(drink: .americano)
        infoDisplayLable.text = errorText
    }
    @IBAction func prepareCappuchinoButton(_ sender: UIButton) {
        prepareDrink(drink: .cappuchino)
        infoDisplayLable.text = errorText
    }
    @IBAction func prepareTeaButton(_ sender: UIButton) {
        prepareDrink(drink: .tea)
        infoDisplayLable.text = errorText
    }
    
    // Service buttons
    @IBAction func addWaterButton(_ sender: UIButton) {
        addWater()
        infoDisplayLable.text = serviceMessage
    }
    @IBAction func addMilkButton(_ sender: UIButton) {
        addMilk()
        infoDisplayLable.text = serviceMessage
    }
    @IBAction func addCoffeeButton(_ sender: UIButton) {
        addCoffee()
        infoDisplayLable.text = serviceMessage
    }
    @IBAction func clearTrayButton(_ sender: UIButton) {
        clearGarbage()
        infoDisplayLable.text = serviceMessage
    }
}

