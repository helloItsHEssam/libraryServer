//
//  PersonControllerTests.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/29/23.
//

@testable import App
import XCTVapor

final class PersonControllerTests: XCTestCase {
    
    func testViewAuthor() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "author/101", afterResponse: { res in
            let person = try res.content.decode(Person.self)
            
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(person.name, "J.R.R. Tolkien")
        })
        
        try app.test(.GET, "author/11", afterResponse: { res in
            XCTAssertEqual(res.status, .notFound)
        })
    }
    
    func testAuthorBooks() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)
        
        try app.test(.GET, "author/books/101", afterResponse: { res in
            let books = try res.content.decode([Book].self)
            
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(books.count, 4)
            XCTAssertEqual(books.first?.author.name, "J.R.R. Tolkien")
        })
    }
}
