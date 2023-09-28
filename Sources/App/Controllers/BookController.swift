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

        books.group(":id") { book in
            book.get(use: view)
        }
    }
    
    func view(req: Request) async throws -> Book {
        throw Abort(.notFound)
    }
}
