import Vapor

func routes(_ app: Application) throws {
    
    try app.register(collection: PersonController())
    try app.register(collection: ImageController())
    try app.register(collection: BookController())
}
