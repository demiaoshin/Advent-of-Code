import XCTest
@testable import day1

final class day1Tests: XCTestCase {
    func test1() throws {
        XCTAssertEqual(day1().sample()[0], 7)
    }

    func test2() throws {
        XCTAssertEqual(day1().sample()[1], 5)
    }
}
