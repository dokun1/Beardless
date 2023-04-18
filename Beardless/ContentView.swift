//
//  ContentView.swift
//  Beardless
//
//  Created by David Okun on 4/17/23.
//

import SwiftUI

struct ContentView: View {
    var people: [Person] = [
        Person(name: "David"),
        Person(name: "Catherine"),
        Person(name: "Another David"),
        Person(name: "Ray", age: 42, isReadyToParty: false)
    ]
    
    var body: some View {
        NavigationStack {
            List(people) { person in
                PersonView(person: person)
            }
            .navigationTitle("People to party with")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
