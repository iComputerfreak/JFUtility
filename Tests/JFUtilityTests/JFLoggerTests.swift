import XCTest
@testable import JFUtility

final class JFLoggerTests: XCTestCase {
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        JFLogger.log(.info, "Test")
        JFLogger.log(.debug, "Debug test")
        JFLogger.info("Info Test")
    }
    
    static var allTests = [
        ("testExample", testExample),
    ]
}
