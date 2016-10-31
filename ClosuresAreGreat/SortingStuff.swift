//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {

    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    
    
    
    
    mutating func sortShips() {
        ships = ships.sorted {$0.age > $1.age}
        for (index,name) in ships.enumerated() {
            if name.name == "Titanic"{
                ships.remove(at: index)
                ships.insert(name, at: 0)
            }
        }
        
    }
    
    mutating func sortBooks() {
        
        books = books.sorted { $0.name < $1.name }
    }
    
    
    mutating func sortBowlingPins() {
        
        bowlingPins = bowlingPins.sorted { $0.color.rawValue < $1.color.rawValue }
            
            //rawValue acts like an index for enums, therefore it is in order. Sorting this array in ascending order.
    }
    
    
    
    
    mutating func sortMusicCDs() {
        
        musicCDs = musicCDs.sorted {$0.name < $1.name}
        
        for (index,name) in musicCDs.enumerated() {
            if name.name == "Drake" {
                musicCDs.remove(at: index)
                musicCDs.insert(name, at: 0)
            }
        }
    }
    
    
    
    mutating func changeColorOfAllPins(to color: Color) {
        
        bowlingPins = bowlingPins.map {
            
            var firstArgument = $0
            firstArgument.changeColor(to: color)
            return firstArgument
        }
    }
}




struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}










