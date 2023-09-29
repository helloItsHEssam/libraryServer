//
//  ImageController.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/29/23.
//

import Foundation
import Vapor

struct ImageController: RouteCollection {
    
    func boot(routes: Vapor.RoutesBuilder) throws {
        let images = routes.grouped("image")

        images.get(":name", use: view)
    }
    
    func view(req: Request) async throws -> Response {
        let directoryPath = req.application.directory.publicDirectory + "images/"
        var filePath: String
        if let fileName = req.parameters.get("name") {
            filePath = directoryPath + fileName
            if !FileManager.default.fileExists(atPath: filePath) {
                filePath = directoryPath + "notFound.png"
            }
            
        } else {
            filePath = directoryPath + "notFound.png"
        }

        return req.fileio.streamFile(at: filePath)
    }
}
