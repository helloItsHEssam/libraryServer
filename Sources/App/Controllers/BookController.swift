//
//  BookController.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/28/23.
//

import Foundation
import Vapor

struct BookController: RouteCollection {
    
    func boot(routes: Vapor.RoutesBuilder) throws {
        let books = routes.grouped("book")

        books.get(":id", use: view)
        books.get("all", use: all)
    }
    
    func view(req: Request) async throws -> Book {
        guard let id = getId(fromRequest: req) else {
            throw Abort(.notFound)
        }
        
        let book = dbBooks.first { $0.id == id }
        guard let book else {
            throw Abort(.notFound)
        }
        
        return book
    }
    
    func all(req: Request) async throws -> [Book] {
        return dbBooks
    }
    
    private func getId(fromRequest req: Request) -> Int? {
        guard let idString = req.parameters.get("id"),
              let id = Int(idString) else {
            return nil
        }
        return id
    }
}
