//
//  Person.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/28/23.
//

import Foundation
import Vapor

struct Person: Content, Equatable {
    
    var id: Int
    var name: String
    var image: Image?
    var description: String
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }
}
