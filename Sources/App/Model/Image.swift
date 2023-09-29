//
//  Image.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/28/23.
//

import Foundation
import Vapor

struct Image: Content, Equatable {
    
    var id: Int
    var url: String
    
    static func == (lhs: Image, rhs: Image) -> Bool {
        return lhs.id == rhs.id
    }
}
