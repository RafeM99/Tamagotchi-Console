//
//  main.swift
//  Tamagotchi Console
//
//  Created by Marriott, Rafe (NA) on 21/11/2024.
//

import Foundation

class Tamagotchi {
    let name: String
    let age: Int
    let weight: Double
    let colour: String
    var hunger: Int
    var health: Int
    var energy: Int
    
    init(_ name: String, _ colour: String) {
        self.name = name
        self.age = 1
        self.weight = 1.0
        self.colour = colour
        self.hunger = 0
        self.health = 100
        self.energy = 100
    }
    
    func showStats() {
        print()
        print("Age: \(age)")
        print("Weight: \(weight)")
        print("Hunger: \(hunger)")
        print("Health: \(health)")
        print("Energy: \(energy)")
        print()
    }
    
    func feed() {
        hunger += 5
    }
    
    func giveMedicine() {
        health += 10
    }
}

print("Enter your Tamagotchi's name: ")
let name = readLine() ?? ""

print("Enter what colour you want \(name) to be: ")
let colour = readLine() ?? "red"

let t = Tamagotchi(name, colour)

var quit = false

while quit == false {
    print("\(t.name) was born!")
    print("They are \(t.colour)!")
    t.showStats()
    
    
}

