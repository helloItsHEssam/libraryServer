//
//  PersonController.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/29/23.
//

import Foundation
import Vapor

struct PersonController: RouteCollection {
    
    func boot(routes: Vapor.RoutesBuilder) throws {
        let authors = routes.grouped("author")
        
        authors.get(":id", use: view)
        authors.get("books", ":id", use: allBooks)
    }
    
    func view(req: Request) async throws -> Person {
        throw Abort(.notFound)
    }
    
    func allBooks(req: Request) async throws -> [Book] {
        throw Abort(.notFound)
    }
}
