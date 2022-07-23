import XCTest
import UnitTestSpy

extension ManagerVerifyFuncProtocol {
    public var args: [String?] {
        return []
    }
    
    public func wasCalledOnce(file: StaticString, line: UInt) -> Bool {
        return true
    }
}

final class SpyClass {
    @VerifyFuncVoid
    private(set) var verifyFuncVoid
    
    @VerifyFuncArgs<String>
    private(set) var verifyFuncArgs
    
    func funcArgs(args: String) {
        verifyFuncArgs.append(args: args)
    }
    
    func funcVoid() {
        verifyFuncVoid.call()
    }
}

class Tests: XCTestCase {
    private let spyClass: SpyClass = .init()

    func testExample() {
        spyClass.funcVoid()
        XCTAssertTrue(spyClass.verifyFuncVoid.wasCalledOnce(file: #file, line: #line))
    }
}
