//
//  ImageControllerTests.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/29/23.
//

@testable import App
import XCTVapor

final class ImageControllerTests: XCTestCase {
    
    func testViewImage() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "images/12", afterResponse: { res in
            XCTAssertEqual(res.status, .notFound)
        })
        
        try app.test(.GET, "image/1.jpg", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
        })
    }
}
