//
//  Book.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/28/23.
//

import Foundation
import Vapor

struct Book: Content {
    
    var id: Int
    var isbn: String
    var name: String
    var description: String
    var images: [Image]
    var authors: [Person]
    var translators: [Person]?
}
