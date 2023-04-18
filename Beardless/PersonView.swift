//
//  PersonView.swift
//  Beardless
//
//  Created by David Okun on 4/17/23.
//

import SwiftUI

struct PersonView: View {
    var person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hey, here's a person!")
            Text(person.name).font(.title2)
            HStack {
                Text("\(person.isReadyForBed == true ? "yes" : "no")").font(.body)
                Text("is ready to party?:  \(person.isReadyToParty == true ? "yes" : "no")")
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: .init(name: "David"))
    }
}
