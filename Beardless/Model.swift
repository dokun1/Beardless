//
//  Model.swift
//  Beardless
//
//  Created by David Okun on 4/17/23.
//

import Foundation

var name = "David"

var age = 36

struct Person: Identifiable {
    var id: String
    
    var name: String
    var age: Int
    var isReadyToParty: Bool = true
    var isReadyForBed: Bool {
        !isReadyToParty
    }
    
    init(name: String) {
        self.name = name
        self.age = self.name.count
        self.id = "\(name.count * 3) + \(name)"
    } // -> produces 1 person

    init(name: String, age: Int) {
        self.name = name
        self.age = age
        self.id = "\(name.count * 3) + \(name)"
    } // -> produces 1 person

    init(name: String, age: Int, isReadyToParty: Bool) {
        self.name = name
        self.age = age
        self.isReadyToParty = isReadyToParty
        self.id = "\(name.count * 3) + \(name)"
    } // -> produces 1 person
}
