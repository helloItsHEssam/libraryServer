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

        try app.test(.GET, "book/12", afterResponse: { res in
            XCTAssertEqual(res.status, .notFound)
        })
    }
}
