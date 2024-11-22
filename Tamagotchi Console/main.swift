//
//  main.swift
//  Tamagotchi Console
//
//  Created by Marriott, Rafe (NA) on 21/11/2024.
//

import Foundation

class Tamagotchi {
    let name: String
    var age: Int
    var weight: Double
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
    
    func displayMenu() {
        print("""

----------------
1. Feed
2. Give Medicine
3. Work
4. Rest

5. Quit
----------------
Enter choice:
""")
    }
    
    func randomEvent() {
        let result = Int.random(in: 1...4)
        
        if result == 1 {
            print("\(name) has got sick!")
            let healthDeduction = Int.random(in: 5...100)
            print("-\(healthDeduction) health")
            health -= healthDeduction
        } else if result == 2 {
            print("\(name) has grown up!")
            print("+1 age")
            age += 1
        } else if result == 3 {
            print("\(name) did some exercise!")
            print("+5 health, -5 energy")
            health += 5
            energy -= 5
        } else if result == 4 {
            print("\(name) did nothing!")
        }
    }
    
    func feed() {
        hunger += 5
    }
    
    func giveMedicine() {
        health += 10
    }
    
    func work() {
        energy -= 10
    }
    
    func rest() {
        
    }
    
}

print("Enter your Tamagotchi's name: ")
let name = readLine() ?? ""

print("Enter what colour you want \(name) to be: ")
let colour = readLine() ?? "red"

let t = Tamagotchi(name, colour)

print("\(t.name) was born!")
print("They are \(t.colour)!")

var quit = false

while quit == false {
    print()
    t.randomEvent()
    
    t.showStats()
    t.displayMenu()
    
    let input = readLine() ?? ""
    
    if input == "1" {
        print("Feeding \(t.name)")
        t.feed()
    } else if input == "2" {
        print("Giving medicine to \(t.name)")
        t.giveMedicine()
    } else if input == "3" {
        print("Putting \(t.name) to work!")
        t.work()
    } else if input == "4" {
        print("Letting \(t.name) rest")
        t.rest()
    } else if input == "5" {
        print("Quitting...")
        quit = true
    }
    
    if t.health <= 0 {
        print("\(t.name) died!")
        quit = true
    }
}

