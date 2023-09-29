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

        try app.test(.GET, "author/12", afterResponse: { res in
            XCTAssertEqual(res.status, .notFound)
        })
    }
    
    func testAuthorBooks() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)
        
        try app.test(.GET, "author/allbooks/12", afterResponse: { res in
            XCTAssertEqual(res.status, .notFound)
        })
    }
}
