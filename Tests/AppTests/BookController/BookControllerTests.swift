//
//  BookControllerTests.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/28/23.
//

@testable import App
import XCTVapor

final class BookControllerTests: XCTestCase {
    
    func testViewBook() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "book/9", afterResponse: { res in
            let book = try res.content.decode(Book.self)
            
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(book.isbn, "0525559493")
            XCTAssertEqual(book.name, "The Midnight Library")
            XCTAssertEqual(book.image, Image(id: 9, url: "9.jpg"))
        })
        
        try app.test(.GET, "book/11", afterResponse: { res in
            XCTAssertEqual(res.status, .notFound)
        })
    }
    
    func testAllBook() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "book/all", afterResponse: { res in
            let books = try res.content.decode([Book].self)

            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(books.count, 9)
            XCTAssertEqual(books[1].isbn, "0358380235")
        })
    }
}
