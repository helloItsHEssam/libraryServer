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
        guard let id = getId(fromRequest: req) else {
            throw Abort(.notFound)
        }
        
        guard let person = findPerson(id: id) else {
            throw Abort(.notFound)
        }
        
        return person
    }
    
    func allBooks(req: Request) async throws -> [Book] {
        guard let id = getId(fromRequest: req) else {
            throw Abort(.notFound)
        }
        
        guard let person = findPerson(id: id) else {
            throw Abort(.notFound)
        }

        return dbBooks.filter { $0.author == person }
    }
    
    private func getId(fromRequest req: Request) -> Int? {
        guard let idString = req.parameters.get("id"),
              let id = Int(idString) else {
            return nil
        }
        return id
    }
    
    private func findPerson(id: Int) -> Person? {
        return dbPersons.first { $0.id == id }
    }
}
